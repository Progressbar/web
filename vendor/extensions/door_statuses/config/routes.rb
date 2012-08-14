Refinery::Core::Engine.routes.draw do
  
    get '/api/door-status' => 'DoorStatuses::DoorStatuses#index'
    get '/api/door-status/new' => 'DoorStatuses::DoorStatuses#new'

end

