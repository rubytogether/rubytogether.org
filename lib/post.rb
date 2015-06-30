require 'yaml'

Post = Struct.new(:name, :date, :id) do
  def self.from_file(file)
    date = Date.parse(file[0..9])
    new(file[10..-1], date, file)
  end

  def self.all
    glob = Rails.root.join("app/views/news/*")
    Dir[glob].sort.map do |path|
      file = File.basename(path, ".html.md")
      next if file.start_with?("index")
      from_file(file)
    end.compact.reverse
  end

  def self.find!(id)
    file = id + ".html.md"

    if Rails.root.join("app/views/news", file).exist?
      Post.from_file(id)
    else
      raise ActiveRecord::RecordNotFound
    end
  end

  def pathname
    Rails.root.join("app/views/news", id + ".html.md")
  end

  def title
    name.titleize
  end

  def body
    pathname.read
  end

end
