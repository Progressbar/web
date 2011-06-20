module ApplicationHelper
  def is_homepage?()
    return params[:action] === 'home'
		
  end	
	
  def is_lang?(lang)
		return params[:locale].to_s === lang
		
  end
  
  # Generate a slug for the string +value+.
  #
  # A slug should consist of numbers (0-9), lowercase letters (a-z) and
  # dashes (-). Any other characters should be filtered.
  #
  # ==== Example
  #
  # "The World is Beautiful!".to_slug # => "the-world-is-beautiful"
  #
  # ==== Returns
  # String:: A 'sluggified' version of this string
  #
  # --
  # @see https://github.com/ludo/to_slug/blob/master/lib/to_slug.rb
  # @api public
  def to_slug(str)
    # Perform transliteration to replace non-ascii characters with an ascii
    # character
    value = str.mb_chars.normalize(:kd).gsub(/[^\x00-\x7F]/n, '').to_s
    
    # Remove single quotes from input
    value.gsub!(/[']+/, '')

    # Replace any non-word character (\W) with a space
    value.gsub!(/\W+/, ' ')
    
    # Remove any whitespace before and after the string
    value.strip!
    
    # All characters should be downcased
    value.downcase!
    
    # Replace spaces with dashes
    value.gsub!(' ', '-')
    
    # Return the resulting slug
    value
  end
end
