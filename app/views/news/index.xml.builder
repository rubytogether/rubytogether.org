atom_feed root_url: news_index_path, schema_date: "2015" do |feed|
  feed.title("Ruby Together News")
  feed.updated(@posts[0].date) if @posts.length > 0

  @posts.each do |post|
    feed.entry(post, id: post.id, url: news_path(post.id)) do |entry|
      entry.title(post.title)
      entry.content(render(inline: post.body, type: "md"), type: 'html')

      entry.author do |author|
        author.name("Ruby Together")
      end
    end
  end
end