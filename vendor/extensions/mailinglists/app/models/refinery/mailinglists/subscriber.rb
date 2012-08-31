module Refinery
  module Mailinglists
    class Subscriber < Refinery::Core::BaseModel
      self.table_name = 'refinery_mailinglists_subscribers'
      acts_as_indexed :fields => [:email]

      attr_accessible :email, :general, :events

      alias_attribute :name, :email

      # Add some validation here if you want to validate the user's input
      # We have validated the first string field for you.
      validates :email, :presence => true, 
                        :uniqueness => true, 
                        :length => { :in => 6..64 }, 
                        :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }    
    end
  end
end