# default pages in en
begin
  ::I18n.locale = :en

  ids = Progressbar::Application::PAGES
  p_oficiality = Page.find_by_title('Legal stuff')
  p_videoarchive = Page.find_by_title('Video Archive')

  unless p_oficiality
    raise "Page officiality non exists, run `rails runner db/seeds/pages_progressbar.rb` first"
  end

  unless p_videoarchive
    p_videoarchive = p_oficiality.children.create(:title => 'Video Archive', :deletable => false, :show_in_menu => true, :position => Page.last.position.to_i + 1)
    p_videoarchive.parts.create({
        :title => 'Body',
        :body => IO.read(Rails.root.join('db/templates/videoarchive.html')),
        :position => 0
      })

    p_videoarchive.parts.create({
        :title => 'Side Body',
        :body => '',
        :position => 1
      })

    puts "p_videoarchive created, id: #{p_videoarchive.id}"    
  else
    p_videoarchive.parts.first.update_attributes(:body => IO.read(Rails.root.join('db/templates/videoarchive.html')))
    
    puts "p_videoarchive updated id: #{p_videoarchive.id}"    
  end

  ::I18n.locale = :sk
  
  p_videoarchive.update_attributes(:title => 'Video archív')
  p_videoarchive.parts.first.update_attributes(:body => IO.read(Rails.root.join('db/templates/videoarchive.html')))
  
rescue Exception => e
  puts e.message
end