# encoding: utf-8

require "spec_helper"

module Refinery

  describe "Door status" do

    # todo better describe context
    context "on homepage" do

      before { 
        DoorStatuses::DoorStatus.delete_all
      }

      it "should not display door status when none data are in the table" do
        visit '/' 

        within "#door-status" do
          page.should have_content('unknown') 
        end
      end
    end

    context "with valid token and params" do
      it "should update the door status to open" do
        visit '/api/door-status/new?door_status[is_open]=true&secret_token=secret'
        page.should have_content('{"created":true}')

        visit '/'
        page.should have_selector("#door-status")
        within "#door-status" do
          page.should have_content('is open') 
        end
      end

      it "should update the door status to closed" do
        visit '/api/door-status/new?door_status[is_open]=false&secret_token=secret'
        page.should have_content('{"created":true}')

        visit '/'
        page.should have_selector("#door-status")
        within "#door-status" do
          page.should have_content('is closed') 
        end
      end
    end

    context "with invalid token or missing params" do
      # empty data
      it "should not update the door status" do
        visit 'http://localhost:3000/api/door-status/new?door_status&secret_token=secret'
        page.should have_content('{"created":false}')
      end

      # empty or wrong secret token
      it "should return 404" do
        visit 'http://localhost:3000/api/door-status/new'

        page.should have_content('The page you requested was not found.')
      end
    end

  end
end


