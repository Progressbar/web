if defined?(User)
  User.all.each do |user|
    if user.has_role?(:superuser) && user.plugins.where(:name => 'mailing_lists').blank?
      user.plugins.create(:name => 'mailing_lists',
                          :position => (user.plugins.maximum(:position) || -1) +1)
    end
  end
end

if defined?(Page)
  page = Page.create(
    :title => 'Mailing Lists',
    :link_url => '/mailing_lists',
    :show_in_menu => false,
    :deletable => false,
    :position => ((Page.maximum(:position, :conditions => {:parent_id => nil}) || -1)+1),
    :menu_match => '^/mailing_lists(\/|\/.+?|)$'
  )
  Page.default_parts.each do |default_page_part|
    page.parts.create(:title => default_page_part, :body => nil)
  end
end