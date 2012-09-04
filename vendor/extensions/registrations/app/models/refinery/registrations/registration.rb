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
                        :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }

      validate :member_with_email_exists?
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

      private 

        def member_with_email_exists?
          errors.add(:base, ::I18n.t(:member_exists_html,
                      :scope => "activerecord.errors.models.refinery/registrations/registration",
                      :contact_email => Refinery::Setting.get(:site_email)).html_safe) if ::Refinery::User.find_by_email(email).present?
        end
    end

  end
end

