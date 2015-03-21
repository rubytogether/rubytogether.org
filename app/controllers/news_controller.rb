class NewsController < ApplicationController
  after_action :set_cache_control_headers

  Post = Struct.new(:name, :date, :path)

  def index
    news = Rails.root.join("app/views/news")
    @posts = news.each_child(false).sort.map do |file|
      next if file.to_s.include?("index.html.erb")
      path = file.basename(".html.md").to_s
      date = path[0..9]
      Post.new(path[10..-1].titleize, date, news_path(path))
    end.compact.reverse
  end

  def show
    raise(ActiveRecord::RecordNotFound) unless params[:id].present?

    filename = params[:id].strip.tap do |name|
      # NOTE: File.basename doesn't work right with Windows paths on Unix
      # get only the filename, not the whole path
      name.sub! /\A.*(\\|\/)/, ''
      # Finally, replace all non alphanumeric, underscore
      # or periods with underscore
      name.gsub! /[^\w\.\-]/, '_'
    end

    if Rails.root.join("app/views/news", filename + ".html.md").exist?
      render action: filename
    else
      raise ActiveRecord::RecordNotFound
    end
  end

end
