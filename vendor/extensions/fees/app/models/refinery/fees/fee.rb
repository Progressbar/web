module Refinery
  module Fees
    class Fee < Refinery::Core::BaseModel
      self.table_name = 'refinery_fees'

      attr_accessible :user_id, :transaction_id, :amount, :currency, :month, :year, :message, :stamp

      belongs_to :user, :foreign_key => :user_id, :class_name => '::Refinery::User'
      belongs_to :transaction, :foreign_key => :transaction_id, :class_name => '::Refinery::Transactions::Transaction'

      def title
        "fee from #{self.user_id} per #{self.month}/#{self.year}"
      end

      validates :transaction_id, :presence => true
      validates :user_id, :presence => true
      validates :amount, :presence => true
      validates :currency, :presence => true
      validates :month, :presence => true, :numericality => { :only_integer => true }
      validates :year, :presence => true, :numericality => { :only_integer => true }

      validates :stamp, :uniqueness => true

      validates_associated :user
      validates_associated :transaction

      before_save :generate_stamp
      before_save :format_year

      self.per_page = 36

      def self.mine(page, user_id)
        paginate :per_page => self.per_page, :page => page,
          :group => 'month, year',
          :select => 'refinery_fees.*, SUM(refinery_fees.amount) AS sum_amount',
          :conditions => ['user_id = ?', user_id],
        :order => 'year DESC, month DESC'
      end

      def self.from_all(page)
        paginate :per_page => self.per_page, :page => page,
          :group => 'month, year',
          :select => 'refinery_fees.*, SUM(refinery_fees.amount) AS sum_amount',
          :order => 'year DESC, month DESC'
      end

      def generate_stamp
        self[:stamp] = Digest::MD5.hexdigest("#{self[:transaction_id]}#{self[:user_id]}#{self[:month]}#{self[:year]}") if self[:stamp].nil?
      end

      # 11, 12 -> 2011, 2012
      def format_year
        self[:year] = self[:year].to_i + 2000 if self[:year].to_i < 2000
      end
    end
  end
end
