Refinery::Core::Engine.routes.append do
  # Frontend routes
  namespace :registrations do
    resources :registrations, :path => '', :only => [:new, :create] do
      collection do
        get :thank_you
      end
    end
  end

  # Admin routes
  namespace :transactions, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :transactions do
        collection do
          get :income
          get :outcome
        end
      end
    end
  end

  # Admin routes
  namespace :registrations, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :registrations do
        collection do
          get :approved
          get :rejected
        end
        member do
          get :approve
          get :reject
        end
      end

      resources :settings
    end
  end
end

