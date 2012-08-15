# encoding: utf-8

require "spec_helper"

module Refinery

  describe "Door status" do

    # todo better describe context
    context "on homepage" do

      before { 
        
      }

      it "should not display door status when none data are in the table" do
        DoorStatuses::DoorStatus.delete_all

        visit '/' 
        
        page.should_not have_selector("#door-status")
      end

      it "should update the door status to open" do
        visit '/api/door-status/new?door_status[is_open]=true'
        page.should have_content('{"created":true}')

        visit '/'
        page.should have_selector("#door-status")
        within "#door-status" do
          page.should have_content('is open') 
        end
      end

      it "should update the door status to open" do
        visit '/api/door-status/new?door_status[is_open]=false'
        page.should have_content('{"created":true}')

        visit '/'
        page.should have_selector("#door-status")
        within "#door-status" do
          page.should have_content('is closed') 
        end
      end

      # empty data
      it "should not update the door status" do
        visit 'http://localhost:3000/api/door-status/new?door_status'
        page.should have_content('{"created":false}')
      end
    end

  end
end


