# default pages in en
::I18n.locale = :en

ids = Progressbar::Application::PAGES

home_page = Page.find_by_id(ids[:HOME_PAGE_ID])
colophon_page = Page.find_by_id(ids[:COLOPHON_PAGE_ID])
about_us_page = Page.find_by_id(ids[:ABOUT_US_PAGE_ID])
blog_page = Page.find_by_id(ids[:BLOG_PAGE_ID])
wiki_page = Page.find_by_id(ids[:WIKI_PAGE_ID])
contact_page = Page.find_by_id(ids[:CONTACT_PAGE_ID])
privacy_contact_page = Page.find_by_id(ids[:PRIVACY_CONTACT_PAGE_ID])
events_page = Page.find_by_id(ids[:EVENTS_PAGE_ID])
join_us_page = Page.find_by_id(ids[:JOIN_US_PAGE_ID])
thank_you_contact_page = Page.find_by_id(ids[:THANK_YOU_CONTACT_PAGE_ID])
projects_page = Page.find_by_id(ids[:PROJECTS_PAGE_ID])
sponsors_page = Page.find_by_id(ids[:SPONSORS_PAGE_ID])
p_oficiality = Page.find_by_title('Legal stuff')
p_stanovy = Page.find_by_title('Statutes')
p_media = Page.find_by_title('Media')

unless wiki_page
  wiki_page = Page.create(:title => 'Wiki', :deletable => false, :show_in_menu => true, :link_url => 'http://wiki.progressbar.sk/', :position => Page.last.position.to_i + 1)
  puts "wiki #{wiki_page.id}"
end

unless colophon_page
  colophon_page = Page.create(:title => 'Colophon', :deletable => false, :show_in_menu => false, :position => Page.last.position.to_i + 1)
  colophon_page.parts.create({
      :title => 'Body',
      :body => '',
      :position => 0
    })
  
  colophon_page.parts.create({
      :title => 'Side Body',
      :body => '',
      :position => 1
    })
  
  puts "colophon #{colophon_page.id}"
end

unless join_us_page
  join_us_page = Page.create(:title => 'Join Us', :deletable => false, :show_in_menu => false, :position => Page.last.position.to_i + 1)
  join_us_page.parts.create({
      :title => 'Body',
      :body => IO.read(Rails.root.join('db/templates/pridaj.html')),
      :position => 0
    })
  
  join_us_page.parts.create({
      :title => 'Side Body',
      :body => '',
      :position => 1
    })  
  puts "join us #{join_us_page.id}"
end

unless projects_page
  projects_page = Page.create(:title => 'Projects', :deletable => false, :show_in_menu => true, :draft => true, :link_url => 'http://wiki.progressbar.sk/projects/', :position => Page.last.position.to_i + 1)
  projects_page.parts.create({
      :title => 'Body',
      :body => '',
      :position => 0
    })
  
  projects_page.parts.create({
      :title => 'Side Body',
      :body => '',
      :position => 1
    })
  puts "projects #{projects_page.id}"
end

unless p_oficiality
  p_oficiality = Page.create(:title => 'Legal stuff', :deletable => false, :show_in_menu => true, :skip_to_first_child => true, :position => Page.last.position.to_i + 1)
  
  puts "page Oficiality was created: #{p_oficiality.id}" 
end

unless p_stanovy
  p_stanovy = p_oficiality.children.create(:title => 'Statutes', :deletable => false, :show_in_menu => true, :position => Page.last.position.to_i + 1)
  p_stanovy.parts.create({
      :title => 'Body',
      :body => IO.read(Rails.root.join('db/templates/stanovy.html')),
      :position => 0
    })
  
  p_stanovy.parts.create({
      :title => 'Side Body',
      :body => IO.read(Rails.root.join('db/templates/stanovy_sidebar.html')),
      :position => 1
    })
end

unless p_media
  p_media = p_oficiality.children.create(:title => 'Media', :deletable => false, :show_in_menu => true, :position => Page.last.position.to_i + 1)
  p_media.parts.create({
      :title => 'Body',
      :body => '',
      :position => 0
    })
  
  p_media.parts.create({
      :title => 'Side Body',
      :body => '',
      :position => 1
    })
  
  puts "p_media #{p_media.id}"
end

unless sponsors_page
  sponsors_page = p_oficiality.children.create(:title => 'Sponsors', :deletable => false, :show_in_menu => true, :position => Page.last.position.to_i + 1)
  sponsors_page.parts.create({
      :title => 'Body',
      :body => '',
      :position => 0
    })
  
  sponsors_page.parts.create({
      :title => 'Side Body',
      :body => '',
      :position => 1
    })
  
  puts "sponsors_page #{sponsors_page.id}"
end

::I18n.locale = :sk
puts 'locale -> sk'

home_page.update_attributes(:title => 'Úvod')
about_us_page.update_attributes({:title => 'O nás', :draft => true, :show_in_menu => false})
blog_page.update_attributes(:title => 'Blog')
events_page.update_attributes(:title => 'Kalendár')
contact_page.update_attributes(:title => 'Kontakt')
privacy_contact_page.update_attributes({:title => 'Ochrana osobných údajov'})
thank_you_contact_page.update_attributes(:title => 'Ďakujeme')
wiki_page.update_attributes(:title => 'Wiki')
colophon_page.update_attributes(:title => 'Tiráž')
join_us_page.update_attributes(:title => 'Pridaj sa')
projects_page.update_attributes(:title => 'Projekty')

p_oficiality.update_attributes(:title => 'Oficiality')
p_stanovy.update_attributes(:title => 'Stanovy')
p_media.update_attributes(:title => 'Pre médiá')
sponsors_page.update_attributes(:title => 'Sponzori')


p_stanovy.parts.first.update_attributes(:body => IO.read(Rails.root.join('db/templates/stanovy.html')))
p_stanovy.parts.last.update_attributes(:body => IO.read(Rails.root.join('db/templates/stanovy_sidebar.html')))

join_us_page.parts.first.update_attributes(:body => IO.read(Rails.root.join('db/templates/pridaj.html')))

p_media.parts.first.update_attributes(:body => IO.read(Rails.root.join('db/templates/media.html')))

sponsors_page.parts.first.update_attributes(:body => IO.read(Rails.root.join('db/templates/sponzori.html')))

if contact_page
  contact_page.parts.first.update_attributes(:body => IO.read(Rails.root.join('db/templates/kontakt.html')))
  contact_page.parts.last.update_attributes(:body => '')
  puts 'page kontakt updated'

  contact_page_interier = Page.find_by_title('Interiér')
  contact_page_fotonavigacia = Page.find_by_title('Fotonavigácia')
  contact_page_mapy = Page.find_by_title('Mapy')
  contact_page_qr = Page.find_by_title('QR')

  if contact_page_interier
    contact_page_interier.update_attribute(:deletable, false)
    contact_page_interier.update_attribute(:show_in_menu, true)
  
    contact_page_interier.parts.first.update_attribute(:body, IO.read(Rails.root.join('db/templates/kontakt_interier.html')))
  
    puts 'page Kontakt Interiér was updated'
  else  
    contact_page_interier = contact_page.children.create(:title => 'Interiér', :deletable => false, :show_in_menu => true, :position => Page.last.position.to_i + 1)
    contact_page_interier.parts.create({
        :title => 'Body',
        :body => IO.read(Rails.root.join('db/templates/kontakt_interier.html')),
        :position => 0
      })
  
    contact_page_interier.parts.create({
        :title => 'Side Body',
        :body => '',
        :position => 1
      })
  
    puts 'page Kontakt Interiér was created'
  end

  if contact_page_fotonavigacia
    contact_page_fotonavigacia.update_attribute(:deletable, false)
    contact_page_fotonavigacia.update_attribute(:show_in_menu, true)
  
    contact_page_fotonavigacia.parts.first.update_attribute(:body, IO.read(Rails.root.join('db/templates/kontakt_fotonavigacia.html')))
  
    puts 'page Kontakt Fotonavigácia was updated'
  else
    contact_page_fotonavigacia = contact_page.children.create(:title => 'Fotonavigácia', :deletable => false, :show_in_menu => true, :position => Page.last.position.to_i + 1)
    contact_page_fotonavigacia.parts.create({
        :title => 'Body',
        :body => IO.read(Rails.root.join('db/templates/kontakt_fotonavigacia.html')),
        :position => 0
      })
  
    contact_page_fotonavigacia.parts.create({
        :title => 'Side Body',
        :body => '',
        :position => 1
      })
  
    puts 'page Kontakt Fotonavigácia was created'
  end

  if contact_page_mapy
    contact_page_mapy.update_attribute(:deletable, false)
    contact_page_mapy.update_attribute(:show_in_menu, true)
  
    contact_page_mapy.parts.first.update_attribute(:body, IO.read(Rails.root.join('db/templates/kontakt_mapy.html')))
  
    puts 'page Kontakt Mapy was updated'
  else
    contact_page_mapy = Page.create(:title => 'Mapy', :deletable => false, :show_in_menu => true, :parent_id => contact_page.id, :position => Page.last.position.to_i + 1)
    contact_page_mapy.parts.create({
        :title => 'Body',
        :body => IO.read(Rails.root.join('db/templates/kontakt_mapy.html')),
        :position => 0
      })
  
    contact_page_mapy.parts.create({
        :title => 'Side Body',
        :body => '',
        :position => 1
      })
  
    puts 'page Kontakt Mapy was created'
  end
end

puts 'reorder progressbar pages'

events_page.move_to_right_of(home_page)
blog_page.move_to_right_of(events_page)
p_oficiality.move_to_right_of(blog_page)
about_us_page.move_to_right_of(projects_page)

puts 'progressbar pages seed finish'