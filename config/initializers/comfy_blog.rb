# frozen_string_literal: true

ComfyBlog.configure do |config|
  # application layout to be used to index blog posts
  config.app_layout = 'application'

  # Number of posts per page. Default is 10
  #   config.posts_per_page = 10
end

Rails.configuration.after_initialize do
  Comfy::Blog::Post.class_eval do
    def date
      published_at.to_date
    end

    def summary
      fragments.find{|f| f.identifier == "summary" }&.content
    end
  end
end
