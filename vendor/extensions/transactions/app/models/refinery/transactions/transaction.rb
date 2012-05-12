module Refinery
  module Transactions
    class Transaction < Refinery::Core::BaseModel
      self.table_name = 'refinery_transactions'

      before_save :generate_stamp

      attr_accessible :from_account, :to_account, :vs, :amount, :currency, :realized_at, :message, :raw, :primary_type, :custom_type

      acts_as_indexed :fields => [:message, :from_account, :to_account]

      validates :primary_type, :presence => true
      validates :amount, :presence => true
      validates :realized_at, :presence => true

      default_scope :order => 'realized_at DESC'

      scope :income, :conditions => {:primary_type => 'income'}
      scope :outcome, :conditions => {:primary_type => 'outcome'}


      has_many :fees

      def primary_types
        ['income', 'outcome']
      end

      def custom_types
        ['fee', 'donation', 'rent']
      end

      def title
        case self.primary_type
        when 'income'
          "Income from #{self.from_account.truncate(10)}"
        when 'outcome'
          "Payment to #{self.to_account}"
        end
      end

      def secondary_type
      end

      self.per_page = 100

      protected

      def generate_stamp
        self[:stamp] = 1 if self[:stamp].nil?
      end
    end
  end
end
