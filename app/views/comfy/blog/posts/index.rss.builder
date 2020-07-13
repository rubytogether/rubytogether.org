atom_feed root_url: news_index_path, schema_date: "2015" do |feed|
  feed.title("Ruby Together News")
  feed.updated(@blog_posts.first.published_at) if @blog_posts.length > 0

  @blog_posts.each do |post|
    url = comfy_blog_post_url(@cms_site.path, post.year, post.month, post.slug)

    feed.entry(post, id: post.id, url: url) do |entry|
      entry.title(post.title)
      entry.content(post.content_cache)

      entry.author do |author|
        author.name("Ruby Together")
      end
    end
  end
end

