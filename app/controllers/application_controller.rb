class ApplicationController < ActionController::Base
  protect_from_forgery

  layout proc{ |c| c.request.xhr? ? false : "application" }
end
