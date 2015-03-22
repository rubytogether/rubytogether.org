class NewsController < ApplicationController
  after_action :set_cache_control_headers

  Post = Struct.new(:name, :date, :id) do
    def self.from_file(file)
      date = Date.parse(file[0..9])
      new(file[10..-1].titleize, date, file)
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

    def body
      pathname.read
    end
  end

  def index
    @posts = Post.all
  end

  def show
    name = sanitize_filename(params[:id])
    render Post.find!(name).id
  end

private

  def sanitize_filename(id)
    id.strip.tap do |name|
      # NOTE: File.basename doesn't work right with Windows paths on Unix
      # get only the filename, not the whole path
      name.sub! /\A.*(\\|\/)/, ''
      # Finally, replace all non alphanumeric, underscore
      # or periods with underscore
      name.gsub! /[^\w\.\-]/, '_'
    end
  end

end
