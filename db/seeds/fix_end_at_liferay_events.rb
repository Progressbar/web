Event.all.each do |e|
  e.end_at = e.start_at + 2.hour
  e.save!
end