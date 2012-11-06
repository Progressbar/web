Refinery::PagesController.class_eval do

    # before_filter :get_3_blog_posts, :only => [:home]

    protected

    def get_3_blog_posts
    	@blog_posts = ::Refinery::Blog::Post.live.paginate({
          :page => 1,
          :per_page => 3
        })
    end
end