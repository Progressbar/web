require 'acts_as_indexed'

Refinery::User.class_eval do
  has_many :fees, :class_name => '::Refinery::Fees::Fee'

  before_save :generate_progressbar_uid, :if => :empty_progressbar_uid

  acts_as_indexed :fields => [:username, :email, :progressbar_uid]
  MEMBER_ROLE_ID = 3
  ACTIVE_MEMBER_ROLE_ID = 4

  def identifications
    trans = ::Refinery::Transactions::Transaction.income.where(:vs => self.progressbar_uid)
    acc = []
    trans.each do |t|
      acc << t.from_account
    end
    "#{self.progressbar_uid} - #{self.username} - #{self.progressbar_screenname.to_s} - #{acc.uniq.join(' - ').to_s}"
  end

  def self.members
    joins(:roles).where('refinery_roles_users.role_id = ?', MEMBER_ROLE_ID)
  end

  def self.active_members
    joins(:roles).where('refinery_roles_users.role_id = ?', ACTIVE_MEMBER_ROLE_ID)
  end

  private

    def generate_progressbar_uid
      self.progressbar_uid = ::Refinery::User.select('MAX(progressbar_uid) AS progressbar_uid').last.progressbar_uid.to_i + 42
    end

    def empty_progressbar_uid
      self.progressbar_uid.nil? or self.progressbar_uid == 0
    end
end