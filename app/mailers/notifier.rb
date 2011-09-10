class Notifier < ActionMailer::Base
  NOTIFICATION_CONTACT_EMAIL = 'info@progressbar.sk'
  
  def registration_notification(registration)
    @sender = registration
    mail(:to => NOTIFICATION_CONTACT_EMAIL,
         :from => registration[:email],
         :subject => "New registration #{registration[:username]}")
  end
  
end
