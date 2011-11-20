class PagesController < ApplicationController
  
  # This action is usually accessed with the root path, normally '/'
  def home
    @blog_posts = BlogPost.live.paginate({
        :page => 1,
        :per_page => 3
      })
    
    event = Event.where('start_at >= ?', Time.now).order('featured ASC').limit(1)
    @event = event.empty? ? Event.last : event.first
    
    error_404 unless (@page = Page.where(:link_url => '/').first).present?
  end
  
  def show
    @page = Page.find("#{params[:path]}/#{params[:id]}".split('/').last)
    
    if @page.try(:live?) || (refinery_user? && current_user.authorized_plugins.include?("refinery_pages"))
      # if the admin wants this to be a "placeholder" page which goes to its first child, go to that instead.
      if @page.skip_to_first_child && (first_live_child = @page.children.order('lft ASC').live.first).present?
        redirect_to first_live_child.url
      elsif @page.link_url.present?
        redirect_to @page.link_url and return
      end
    else
      error_404
    end
  end
  
  def actions
    @page = Page.find('akcie-a-organizacia')
    @inquiry = Inquiry.new
  end
  
  private

  def events_in_current_week ()
    mon = Time.now.beginning_of_week()
    tue = mon + 1.day
    wed = mon + 2.day
    thu = mon + 3.day
    fri = mon + 4.day
    sat = mon + 5.day
    sun = mon + 6.day

    mon_ev = Event.where(['(start_at >= ? AND start_at < ?) OR (end_at >= ? AND end_at < ?)', mon, tue, mon, tue]).order('featured ASC').limit(1)
    tue_ev = Event.where(['(start_at >= ? AND start_at < ?) OR (end_at >= ? AND end_at < ?)', tue, wed, tue, wed]).order('featured ASC').limit(1)
    wed_ev = Event.where(['(start_at >= ? AND start_at < ?) OR (end_at >= ? AND end_at < ?)', wed, thu, wed, thu]).order('featured ASC').limit(1)
    thu_ev = Event.where(['(start_at >= ? AND start_at < ?) OR (end_at >= ? AND end_at < ?)', thu, fri, thu, fri]).order('featured ASC').limit(1)
    fri_ev = Event.where(['(start_at >= ? AND start_at < ?) OR (end_at >= ? AND end_at < ?)', fri, sat, fri, sat]).order('featured ASC').limit(1)
    sat_ev = Event.where(['(start_at >= ? AND start_at < ?) OR (end_at >= ? AND end_at < ?)', sat, sun, sat, sun]).order('featured ASC').limit(1)
    sun_ev = Event.where(['(start_at >= ? AND start_at < ?) OR (end_at >= ? AND end_at < ?)', sun, sun + 1.day, sun, sun + 1.day]).order('featured ASC').limit(1)

    @events_in_week = [ {'day' => mon, 'events' => mon_ev},
      {'day' => tue, 'events' => tue_ev}, 
      {'day' => wed, 'events' => wed_ev}, 
      {'day' => thu, 'events' => thu_ev}, 
      {'day' => fri, 'events' => fri_ev}, 
      {'day' => sat, 'events' => sat_ev}, 
      {'day' => sun, 'events' => sun_ev} ]

  end

end
