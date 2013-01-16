  owasp_page_cfg = {
    :title => { :sk => 'Owasp', :en => 'Owasp'},
    :attributes => {
      :deletable => true,
      :show_in_menu => false,
      :link_url => 'https://www.owasp.org/index.php/Slovakia' }
  }

    attributes = {:deletable => false, :show_in_menu => true}.merge(owasp_page_cfg[:attributes]) if owasp_page_cfg[:attributes]
    page = nil

    page_created = false
    unless page
      attributes = attributes.merge({:title => owasp_page_cfg[:title][::I18n.locale].to_s})
      page = ::Refinery::Page.create(attributes)
      page.save!
      page_created = true
    end

    ::Refinery::Pages.default_parts.each_with_index do |part_title, i|
      part = page.parts.find_by_title(part_title)
      unless part
        page.parts.create({
            :title => part_title,
            :body => "",
            :position => i
          })
      else
        part.update_attributes(:position => i)
      end
    end

   ::Refinery::I18n.frontend_locales.each do |lang|
      ::I18n.locale = lang

      attributes = attributes.merge({:custom_slug => owasp_page_cfg[:custom_slug][lang].to_s}) if owasp_page_cfg[:custom_slug] and owasp_page_cfg[:custom_slug][lang]
      attributes = attributes.merge({:title => owasp_page_cfg[:title][lang].to_s})
      page.update_attributes(attributes)
    end

    puts "Page \"#{page.title}\" (#{page.id}) #{page_created ? 'created' : 'updated'}."

