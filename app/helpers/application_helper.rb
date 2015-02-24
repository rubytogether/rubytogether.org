module ApplicationHelper

  def title(text = nil)
    if text
      @title = text
    else
      @title
    end
  end

  def contact_us
    link_to "contact us", "mailto:hello@rubytogether.org"
  end

  def bundler
    content_tag :a, "Bundler", href: "http://bundler.io"
  end

  def rubygems
    content_tag :a, "Rubygems", href: "https://rubygems.org/pages/download"
  end

  def rubygems_org
    content_tag :a, "Rubygems.org", href: "http://rubygems.org"
  end

end
