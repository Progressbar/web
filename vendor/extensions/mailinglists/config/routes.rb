Refinery::Core::Engine.routes.append do
  # Frontend routes
  namespace :mailinglists do
    resources :mailinglists, :path => '', :only => [:new, :create] do
      collection do
        get :thank_you
      end
    end
  end

  # Admin routes
  namespace :mailinglists, :path => '' do
    namespace :admin, :path => 'refinery/mailinglists' do
      resources :mailinglists, :path => '' 
      resources :settings
    end
  end
end

