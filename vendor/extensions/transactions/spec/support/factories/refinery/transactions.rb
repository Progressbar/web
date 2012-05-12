
FactoryGirl.define do
  factory :transaction, :class => Refinery::Transactions::Transaction do
    sequence(:realized_at) { |n| "refinery#{n}" }
  end
end

