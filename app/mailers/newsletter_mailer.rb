class NewsletterMailer < ActionMailer::Base
  
  default :from => 'no-reply@progressbar.sk', :to => 'keraml@gmail.com'
  
  def new()
    mail(
      :subject => "[progressbar] - Novinky na webe"
    )
  end  
end
