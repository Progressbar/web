# samy kamkar in bratislava - old page
begin
  ::I18n.locale = :sk
  
  p_samy_title = 'Samy Kamkar in Bratislava'
  p_samy = Page.find_by_title(p_samy_title)

  unless p_samy
    p_samy = Page.create(:title => p_samy_title, :deletable => false, :show_in_menu => false, :position => Page.last.position.to_i + 1)
    p_samy.parts.create({
        :title => 'Body',
        :body => IO.read(Rails.root.join('db/templates/samy-kamkar-in-bratislava.html')),
        :position => 0
      })

    p_samy.parts.create({
        :title => 'Side Body',
        :body => '',
        :position => 1
      })

    puts "p_samy created, id: #{p_samy.id}"    
  else
    p_samy.parts.first.update_attributes(:body => IO.read(Rails.root.join('db/templates/samy-kamkar-in-bratislava.html')))
    
    puts "p_samy updated id: #{p_samy.id}"    
  end

rescue Exception => e
  puts e.message
end