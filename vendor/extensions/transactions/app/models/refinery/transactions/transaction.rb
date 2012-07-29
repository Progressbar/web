module Refinery
  module Transactions
    class Transaction < Refinery::Core::BaseModel
      
      self.table_name = 'refinery_transactions'
      self.per_page = 100

      INCOME_TRANSACTION_TYPE = 'income'
      OUTCOME_TRANSACTION_TYPE = 'outcome'

      attr_accessible :from_account, :to_account, :vs, :amount, :currency, :realized_at, :message, :raw, :stamp, :primary_type, :custom_type

      acts_as_indexed :fields => [:message, :from_account, :to_account]

      validates :primary_type, :presence => true
      validates :amount, :presence => true
      validates :realized_at, :presence => true
      validates :stamp, :presence => true

      default_scope :order => 'realized_at DESC'

      scope :income, :conditions => {:primary_type => INCOME_TRANSACTION_TYPE}
      scope :outcome, :conditions => {:primary_type => OUTCOME_TRANSACTION_TYPE}

      has_many :fees

      def primary_types
        [INCOME_TRANSACTION_TYPE, OUTCOME_TRANSACTION_TYPE]
      end

      def custom_types
        ['fee', 'donation', 'rent']
      end

      def title
        case self.primary_type
        when INCOME_TRANSACTION_TYPE
          "Income from #{self.from_account.truncate(10)}"
        when OUTCOME_TRANSACTION_TYPE
          "Payment to #{self.to_account}"
        end
      end

    end
  end
end
