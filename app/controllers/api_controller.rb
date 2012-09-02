class ApiController < ::ApplicationController
  protect_from_forgery

  before_filter :check_rights, :only => [:create, :update, :new, :delete]

  private

    # todo implement token validation
    def check_rights
      disabled_ip_addressess = [] # for index & update new delete create
      allowed_ip_addressess = [] # for update new delete create
		error_404 unless params[:secret_token].present? &&
			params[:secret_token] == 'secret' &&
      disabled_ip_addressess.empty? &&
			allowed_ip_addressess.empty?
    end
end
