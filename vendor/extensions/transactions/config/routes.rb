Refinery::Core::Engine.routes.append do

  # Frontend routes
  get '/transactions/create' => 'transactions::transactions#create'

  namespace :transactions do
    resources :transactions, :path => '', :only => [:index, :create]
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

end
