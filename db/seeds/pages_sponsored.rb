::I18n.locale = :sk

p_sponsored = Page.find_by_title('Sponsored')

p_webdevelopment = Page.find_by_title('Web aplikácie')
p_pentests = Page.find_by_title('Penetračné testy')
p_outsourcing = Page.find_by_title('Outsourcing správy')
p_webhosting = Page.find_by_title('Web hosting')

unless p_sponsored
  p_sponsored = Page.create(:title => 'Sponsored', :deletable => false, :show_in_menu => false, :position => Page.last.position.to_i + 1)
end

unless p_webdevelopment
  p_webdevelopment = p_sponsored.children.create(:title => 'Web aplikácie', :deletable => false, :show_in_menu => false, :position => Page.last.position.to_i + 1)
  p_webdevelopment.parts.create({
      :title => 'Body',
      :body => IO.read(Rails.root.join('db/templates/sponsored/web-development.html')),
      :position => 0
    })
  
  p_webdevelopment.parts.create({
      :title => 'Side Body',
      :body => '',
      :position => 1
    })
  
else
  p_webdevelopment.parts.first.update_attributes(:body => IO.read(Rails.root.join('db/templates/sponsored/web-development.html')))
end

puts 'sponsored pages updated'