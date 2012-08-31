module Refinery
  module Registrations
    class Registration < Refinery::Core::BaseModel
      self.table_name = 'refinery_registrations'

      attr_accessible :username, :email, :message

      acts_as_indexed :fields => [:username, :email, :message]

      alias_attribute :name, :username

      validates :username, :presence => true, :length => { :in => 6..32 }
      validates :email, :presence => true, 
                        :uniqueness => true, 
                        :length => { :in => 6..64 }, 
                        :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
      validates :message, :presence => true, :length => { :in => 6..512 }
      validates :state, :presence => true, :format => { :with => /unmoderated|approved|rejected/ }

      scope :unmoderated, :conditions => {:state => 'unmoderated'}
      scope :approved, :conditions => {:state => 'approved'}
      scope :rejected, :conditions => {:state => 'rejected'}

      def approve!
        self.update_attribute(:state, 'approved')
      end

      def reject!
        self.update_attribute(:state, 'rejected')
      end

      def rejected?
        self.state == 'rejected'
      end

      def approved?
        self.state == 'approved'
      end

      def unmoderated?
        self.state == 'unmoderated'
      end
    end
  end
end
