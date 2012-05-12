module Refinery
  module Mailinglists
    class Mailinglist < Refinery::Core::BaseModel
      self.table_name = 'refinery_mailinglists'
      acts_as_indexed :fields => [:email]

      attr_accessible :email, :general, :events

      alias_attribute :name, :email

      # Add some validation here if you want to validate the user's input
      # We have validated the first string field for you.
      validates :email, :presence => true
      
    end
  end
end
