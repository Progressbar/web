FactoryGirl.define do
  factory :mailinglists_subscriber, :class => Refinery::Mailinglists::Subscriber do
    sequence(:email) { |n| "test#{n}@example.com" }
    general false
    events true
  end
end
