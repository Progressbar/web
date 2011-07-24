class Registration < ActiveRecord::Base  
  validates :username, :presence => true
  validates :email, :presence => true, :format=> { :with =>  /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
  validates :message, :presence => true
  
  attr_accessor :id, :email, :username, :message

  def save
    if self.valid?
      Notifier.registration_notification(self).deliver
      return true
    end
    return false
  end
end
