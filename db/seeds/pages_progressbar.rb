::I18n.locale = :sk

puts 'locale -> sk'

p_stanovy = Page.find_by_title('Stanovy')
if p_stanovy
  p_stanovy.parts.first.update_attributes(:body => IO.read(Rails.root.join('db/templates/stanovy.html')))
  p_stanovy.parts.last.update_attributes(:body => IO.read(Rails.root.join('db/templates/stanovy_sidebar.html')))
  puts 'page stanovy updated'
end

p_kontakt = Page.find_by_title('Kontakt')

if p_kontakt
  p_kontakt.parts.first.update_attributes(:body => IO.read(Rails.root.join('db/templates/kontakt.html')))
  p_kontakt.parts.last.update_attributes(:body => '')
  puts 'page kontakt updated'
end

p_organy = Page.find_by_title('Orgány združenia')

if p_organy
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

p_zapoj = Page.find_by_title('Pridaj sa')

if p_zapoj
  p_zapoj.parts.first.update_attributes(:body => IO.read(Rails.root.join('db/templates/zapoj.html')))
  p_zapoj.parts.last.update_attributes(:body => '')
  puts 'page Pridaj sa updated'
end

puts 'progressbar pages seed finish'