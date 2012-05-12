
FactoryGirl.define do
  factory :fee, :class => Refinery::Fees::Fee do
    sequence(:currency) { |n| "refinery#{n}" }
  end
end

