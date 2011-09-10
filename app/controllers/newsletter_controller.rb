class NewsletterController < ActionController::Base

  def index
    render :text => ''
  end
  
  def show
    @newsletter = IO.read(Rails.root.join("app/views/newsletter/#{params[:id]}.html")) if FileTest.exist?("app/views/newsletter/#{params[:id]}.html")
  end

#  def new
#    NewsletterMailer.new.deliver
#    render :text => ''
#  end
  
end
