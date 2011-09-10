class NewsletterMailer < ActionMailer::Base
  
  default :from => 'no-reply@progressbar.sk', :to => 'general-discussion@lists.progressbar.sk'
  
  def new()
    mail(
      :subject => "[progressbar] - Novinky na webe"
    )
  end  
end
