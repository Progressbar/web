require 'factory_girl_rails'

FactoryGirl.define do
  factory :event, :class => Refinery::Calendar::Event do
    sequence(:title) { |n| "Top #{n} Shopping Centers in Chicago" }
    description "Pozdravujem vas hory lesy, z tej duse pozdravujem vas!"
    draft false
    published_at Time.now
    user_id 1
    # start tomorrow on 18:00 until 22:00
    start_date Time.now.tomorrow.beginning_of_day + (60 * 60 * 18)
    end_date Time.now.tomorrow.beginning_of_day + (60 * 60 * 22)

    factory :event_draft do
      draft true
    end
  end
end

def rand_date

end

source_dates = (-50..100).to_a
(1..20).each do |i|

	s_date = source_dates.sample.days.ago
	e_date = s_date + (60 * 60 * 2)
  p_date = s_date - (60 * 60 * 24 * 128)

	FactoryGirl.create(:event,
		:title => "UniqueTitleOne #{i} on #{p_date}",
		:published_at => p_date,
    :dates => [
      {
        :date_time => s_date
        }, {
          :date_time => e_date
        }
    ]
	)

end
p 'done'
# x = FactoryGirl.create(:event, :title => "UniqueTitleOne")
# x = FactoryGirl.create(:event, :title => "UniqueTitleOne")


# you can't get always what you want, but you can try sometime