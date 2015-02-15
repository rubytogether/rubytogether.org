module ApplicationHelper

  def title(text = nil)
    if text
      @title = text
    else
      @title
    end
  end

  def contact_link(text)
    link_to text, "mailto:hello@rubytogether.org"
  end

end
