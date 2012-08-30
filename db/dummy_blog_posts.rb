require 'factory_girl_rails'

FactoryGirl.define do
  factory :blog_post, :class => Refinery::Blog::Post do
    sequence(:title) { |n| "Top #{n} Shopping Centers in Chicago" }
    body "These are the top ten shopping centers in Chicago. You're going to read a long blog post about them. Come to peace with it."
    draft false
    tag_list "chicago, shopping, fun times"
    published_at Time.now
    
    factory :blog_post_draft do
      draft true
    end
  end

  factory :blog_category, :class => Refinery::Blog::Category do
    sequence(:title) { |n| "Shopping #{n}" }
  end
end


# source_dates = (-50..400).to_a
# (1..500).each do |i|

# FactoryGirl.build_list(:blog_category, 10)


s = '<p>Granny a-be He had rescued un as they will immediately stand some swart, led the Dudge Pupublick to sultry sabbath afternoon, Hag Chivychas Eve, in full penalty, pending puwsuance, as Gaudio Gambrinus, grim as every soorkabatcha, tum or style, with truant officers, three tommix, soldiers free, cockaleak and yum (not on the sky overreaching the revise mark) stalks all among the fixed residents and then he is all bellical, the request for you. Hou! Gricks may have males; the prankquean swaradid: Am liking it. And that he crashed in Connacht</p>'
s += '<p>wanamade singsigns to the All for wilde erthe blothoms followed for fierythroats; sends whispers up most devious of Allprohome and rumble and calls him moult instench of the treepartied ambush was struck, she punched the Wulverulverlord (protect us!) the nights altosonority, shipalone, a host; faced with voluntears, the loo, as the land lies one, Lumproar. His atake is just to open to be Cacao Campbell,he didnt we, fenians? And from there, plainly minus twos. Nevertheless Madams Toshowus waxes largely more krectly lubeen or proclaim him dumb! Hush ye plaine of</p>'
s += '<p>dreams, blood and inhabitands, astea as game and (but at the tenderbolts of Mr Shallwesigh or Mr Adams what she on advices, be about the excelsissimost empyrean (bolt, in full lengths or quadrumane or Boghas the owl globe in motions, marching, all his detractors, who, as you Maggy well & hopes till stuffering stage, whaling away and pancrook bespaking the overthrewer to reason the Crossgunn! Up hog and Im tallin ye?) to the ethnarch Humphrey or the jiminy with their mouths, thence your toenail, sir, where indeeth we also an</p>'

Refinery::Blog::Post.delete_all

source_dates = (-5..5).to_a
(1..5).each do |i|
	
	p_date = source_dates.sample.days.ago

	FactoryGirl.create(:blog_post, 
		:published_at => p_date,
    :body => s
	)

end



p 'done'