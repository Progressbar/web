# encoding: utf-8

require "spec_helper"

module Refinery

  describe "Mailing list subscription" do

    # only for dev mode testing ;( need mocks..
    mailinglist_settings = {
#      :general_mailing_list_url => '/listinfo/general-discussion' ,
#      :general_mailing_list_subscribe_url => '/subscribe/general-discussion' ,
      :general_mailing_list_subscribe_url => 'http://localhost:3000/refinery/users/login' ,
      :general_mailing_list_unsubscribe_url => '/options/general-discussion' ,
#      :events_mailing_list_url => '/listinfo/events' ,
#      :events_mailing_list_subscribe_url => '/subscribe/events' ,
      :events_mailing_list_subscribe_url => 'http://localhost:3000/refinery/users/login' ,
      :events_mailing_list_unsubscribe_url => '/options/events' 
    }

    context "as anonymous user visiting homepage" do
      before { 
        Mailinglists::Mailinglist.delete_all
        
        mailinglist_settings.each {|k, v|
          Refinery::Setting.set(k, v.to_s)
        } 

      }

      it "should have mailing list form" do
        visit '/'

        page.should have_content('E-mailová konferencia')
        page.should have_selector("input[name='mailinglist[email]']")
        page.should have_selector("input[name='mailinglist[general]']")
        page.should have_selector("input[name='mailinglist[events]']")

      end

      it "should register email to events mailinglist" do
        visit '/'

        fill_in "mailinglist[email]", :with => "lorem@ipsum.sk"
        click_button 'Sign in'
        page.should have_content('Thank You') 
      end

    end

  end
end


