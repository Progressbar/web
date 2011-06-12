module ApplicationHelper
  def is_homepage?()
    return params[:action] === 'home'
		
  end	
	
  def is_lang?(lang)
		return params[:locale].to_s === lang
		
  end
end
