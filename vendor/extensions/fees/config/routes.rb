Refinery::Core::Engine.routes.append do

  # Admin routes
  namespace :fees, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :fees, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
