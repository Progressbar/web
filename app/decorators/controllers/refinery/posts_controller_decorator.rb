Refinery::Blog::PostsController.class_eval do
  
  def show
    @comment = ::Refinery::Blog::Comment.new

    @canonical = refinery.url_for(:locale => Refinery::I18n.default_frontend_locale) if canonical?

    @post.increment!(:access_count, 1)

    respond_with (@post) do |format|
      format.html { present(@post) }
      format.js { render :partial => 'post', :layout => false }
    end
  end

  protected
    def canonical?
      @post.present? && 
      !@post.have_translation? &&
      ::Refinery::I18n.default_frontend_locale != ::Refinery::I18n.current_frontend_locale
    end
end