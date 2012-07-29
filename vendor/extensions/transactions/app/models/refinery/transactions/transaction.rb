module Refinery
  module Transactions
    class Transaction < Refinery::Core::BaseModel
      
      self.table_name = 'refinery_transactions'
      self.per_page = 100

      attr_accessible :from_account, :to_account, :vs, :amount, :currency, :realized_at, :message, :raw, :stamp, :primary_type, :custom_type

      acts_as_indexed :fields => [:message, :from_account, :to_account]

      validates :primary_type, :presence => true
      validates :amount, :presence => true
      validates :realized_at, :presence => true
      validates :stamp, :presence => true

      default_scope :order => 'realized_at DESC'

      scope :income, :conditions => {:primary_type => 'income'}
      scope :outcome, :conditions => {:primary_type => 'outcome'}

      before_save :set_primary_type

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

      protected


      def set_primary_type
        self[:primary_type] = (self[:amount].to_i > 0 ? 'income' : 'outcome') if self[:primary_type].nil?
      end     
      

    end
  end
end