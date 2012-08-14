module ApplicationHelper
  
  # todo implement
  def is_open?
    true
  end

  def is_lang?(lang)
	params[:locale].to_s === lang
  end
end
