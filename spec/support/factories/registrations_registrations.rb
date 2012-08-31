FactoryGirl.define do
  factory :registration, :class => Refinery::Registrations::Registration do
    sequence(:email) { |n| "test#{n}@example.com" }
    sequence(:username) { |n| "Janko Hrasko #{n}" }
    sequence(:message) { |n| "kto by nemal rad janka hraska?" }
  end
end
