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

  def summary
    meta && meta["summary"]
  end

  def draft
    meta && meta["draft"]
  end

  def body
    parse unless @body
    @body
  end

  def meta
    parse unless @meta
    @meta
  end

private

  def parse
    pathname.read.match(/\A(?:---(.*?)\n---)?(.*)/m) do |matches|
      @meta = YAML.load(matches[1]) if matches[1]
      @body = matches[2]
    end
  end

end
