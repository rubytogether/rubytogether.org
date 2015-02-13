module ApplicationHelper

  def title(text = nil)
    if text
      @title = text
    else
      @title
    end
  end

end
