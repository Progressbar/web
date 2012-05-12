module ApplicationHelper

  def is_lang?(lang)
		params[:locale].to_s === lang
  end
end
