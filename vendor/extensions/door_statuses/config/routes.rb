Refinery::Core::Engine.routes.draw do
  
    get '/api/door_status/update' => 'DoorStatuses::DoorStatuses#update'

end

