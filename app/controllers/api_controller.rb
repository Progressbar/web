class ApiController < ::ApplicationController
  protect_from_forgery

  before_filter :check_rights, :only => [:create, :update, :new, :delete]

  private

    # todo implement token validation
    def check_rights
      params[:secret_token].present? && params[:secret_token] == 'secret'
    end
end
