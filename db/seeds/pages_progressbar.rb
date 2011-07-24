::I18n.locale = :sk
puts 'locale -> sk'

p_stanovy = Page.find_by_title('Stanovy')
if p_stanovy
  p_stanovy.parts.first.update_attributes(:body => IO.read(Rails.root.join('db/templates/stanovy.html')))
  p_stanovy.parts.last.update_attributes(:body => IO.read(Rails.root.join('db/templates/stanovy_sidebar.html')))
  puts 'page stanovy updated'
end

p_kontakt = Page.find_by_title('Kontakt')
p_kontakt_interier = Page.find_by_title('Interiér')
p_kontakt_fotonavigacia = Page.find_by_title('Fotonavigácia')
p_kontakt_mapy = Page.find_by_title('Mapy')
p_kontakt_qr = Page.find_by_title('QR')

if p_kontakt
  p_kontakt.parts.first.update_attributes(:body => IO.read(Rails.root.join('db/templates/kontakt.html')))
  p_kontakt.parts.last.update_attributes(:body => '')
  puts 'page kontakt updated'
end

if p_kontakt_interier
  p_kontakt_interier.update_attribute(:deletable, false)
  p_kontakt_interier.update_attribute(:show_in_menu, true)
  
  p_kontakt_interier.parts.first.update_attribute(:body, IO.read(Rails.root.join('db/templates/kontakt_interier.html')))
  
  puts 'page Kontakt Interiér was updated'
else
  p_kontakt_interier = Page.create(:title => 'Interiér', :deletable => false, :show_in_menu => true, :parent_id => p_kontakt.id, :position => Page.last.position.to_i + 1)
  p_kontakt_interier.parts.create({
      :title => 'Body',
      :body => IO.read(Rails.root.join('db/templates/kontakt_interier.html')),
      :position => 0
    })
  
  p_kontakt_interier.parts.create({
      :title => 'Side Body',
      :body => '',
      :position => 1
    })
  
  puts 'page Kontakt Interiér was created'
end

if p_kontakt_fotonavigacia
  p_kontakt_fotonavigacia.update_attribute(:deletable, false)
  p_kontakt_fotonavigacia.update_attribute(:show_in_menu, true)
  
  p_kontakt_fotonavigacia.parts.first.update_attribute(:body, IO.read(Rails.root.join('db/templates/kontakt_fotonavigacia.html')))
  
  puts 'page Kontakt Fotonavigácia was updated'
else
  p_kontakt_fotonavigacia = Page.create(:title => 'Fotonavigácia', :deletable => false, :show_in_menu => true, :parent_id => p_kontakt.id, :position => Page.last.position.to_i + 1)
  p_kontakt_fotonavigacia.parts.create({
      :title => 'Body',
      :body => IO.read(Rails.root.join('db/templates/kontakt_fotonavigacia.html')),
      :position => 0
    })
  
  p_kontakt_fotonavigacia.parts.create({
      :title => 'Side Body',
      :body => '',
      :position => 1
    })
  
  puts 'page Kontakt Fotonavigácia was created'
end

if p_kontakt_qr
  p_kontakt_qr.update_attribute(:deletable, false)
  p_kontakt_qr.update_attribute(:show_in_menu, true)
  
  p_kontakt_qr.parts.first.update_attribute(:body, IO.read(Rails.root.join('db/templates/kontakt_qr.html')))
  
  puts 'page Kontakt QR was updated'
else
  p_kontakt_qr = Page.create(:title => 'QR', :deletable => false, :show_in_menu => true, :parent_id => p_kontakt.id, :position => Page.last.position.to_i + 1)
  p_kontakt_qr.parts.create({
      :title => 'Body',
      :body => IO.read(Rails.root.join('db/templates/kontakt_qr.html')),
      :position => 0
    })
  
  p_kontakt_qr.parts.create({
      :title => 'Side Body',
      :body => '',
      :position => 1
    })
  
  puts 'page Kontakt QR was created'
end

if p_kontakt_mapy
  p_kontakt_mapy.update_attribute(:deletable, false)
  p_kontakt_mapy.update_attribute(:show_in_menu, true)
  
  p_kontakt_mapy.parts.first.update_attribute(:body, IO.read(Rails.root.join('db/templates/kontakt_mapy.html')))
  
  puts 'page Kontakt Mapy was updated'
else
  p_kontakt_mapy = Page.create(:title => 'Mapy', :deletable => false, :show_in_menu => true, :parent_id => p_kontakt.id, :position => Page.last.position.to_i + 1)
  p_kontakt_mapy.parts.create({
      :title => 'Body',
      :body => IO.read(Rails.root.join('db/templates/kontakt_mapy.html')),
      :position => 0
    })
  
  p_kontakt_mapy.parts.create({
      :title => 'Side Body',
      :body => '',
      :position => 1
    })
  
  puts 'page Kontakt Mapy was created'
end

p_organy = Page.find_by_title('Orgány združenia')

if p_organy
  p_organy.update_attributes(:draft => true)
  p_organy.parts.first.update_attributes(:body => IO.read(Rails.root.join('db/templates/organy.html')))
  p_organy.parts.last.update_attributes(:body => '')
  puts 'page organy updated'
end

p_media = Page.find_by_title('Pre médiá')

if p_media
  p_media.parts.first.update_attributes(:body => IO.read(Rails.root.join('db/templates/media.html')))
  p_media.parts.last.update_attributes(:body => '')
  puts 'page media updated'
end

p_podporte = Page.find_by_title('Podporte nás')

if p_podporte
  p_podporte.parts.first.update_attributes(:body => IO.read(Rails.root.join('db/templates/podporte.html')))
  p_podporte.parts.last.update_attributes(:body => '')
  puts 'page podporte updated'
end

p_pridaj = Page.find_by_title('Pridaj sa')

if p_pridaj
  p_pridaj.parts.first.update_attributes(:body => IO.read(Rails.root.join('db/templates/pridaj.html')))
  p_pridaj.parts.last.update_attributes(:body => '')
  puts 'page Pridaj sa updated'
end

puts 'progressbar pages seed finish'