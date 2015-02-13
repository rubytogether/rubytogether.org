module ApplicationHelper
  def subtitle?
    !@subtitle.nil?
  end

  def subtitle(text = nil)
    if text
      @subtitle = text
    else
      @subtitle
    end
  end

end
