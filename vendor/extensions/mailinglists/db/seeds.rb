if defined?(::Refinery::User)
  ::Refinery::User.all.each do |user|
    if user.has_role?(:superuser) and user.plugins.find_by_name('mailinglists').nil?
      user.plugins.create(:name => "mailinglists",
                          :position => (user.plugins.maximum(:position) || -1) +1)
    end
  end
end

if defined?(::Refinery::Page)
  page = ::Refinery::Page.create(
    :title => "Mailinglists",
    :link_url => "/mailinglists/new",
    :deletable => false,
    :show_in_menu => false,
    :menu_match => "^/mailinglists(\/|\/.+?|)$"
  )
  thank_you_page = page.children.create(
    :title => "Thank You",
    :link_url => "/mailinglists/thank_you",
    :deletable => false,
    :show_in_menu => false
  )
  Refinery::Pages.default_parts.each do |default_page_part|
    page.parts.create(:title => default_page_part, :body => nil)
    thank_you_page.parts.create(:title => default_page_part, :body => nil)
  end
end
