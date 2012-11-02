Refinery::Core::Engine.routes.append do

  # Frontend routes
  get '/api/transaction/new' => 'transactions::transactions#help'
  post '/api/transaction/new' => 'transactions::transactions#create'

  # Admin routes
  namespace :transactions, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :transactions do
        collection do
          get :income
          get :outcome
          get :unpaired
        end
      end
    end
  end

end