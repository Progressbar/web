require 'spec_helper'

describe ApplicationController do
	it "should render home template" do
		get :wymiframe

	    response.should be_success
#      response.should render_template(:wymiframe)
	end
end
