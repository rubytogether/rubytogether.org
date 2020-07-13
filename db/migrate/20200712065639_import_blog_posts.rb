class ImportBlogPosts < ActiveRecord::Migration[6.0]
  def change
    Post.all.reverse.each do |np|
      md = ApplicationController.render(inline: np.body)

      ::Comfy::Blog::Post.create_with(
        created_at: np.date,
        published_at: np.date,
        site: ::Comfy::Cms::Site.find_by(identifier: "ruby-together"),
        layout: ::Comfy::Cms::Layout.find_by(identifier: "news"),
        title: np.title,
        fragments_attributes: [
          {identifier: "summary", content: np.summary},
          {identifier: "content", content: md},
        ]).find_or_create_by!(slug: np.name)
    end
  end
end
