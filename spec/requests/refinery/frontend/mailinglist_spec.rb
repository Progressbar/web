# encoding: utf-8

require "spec_helper"

WebMock.disable_net_connect!

module Refinery

  describe "Mailing list subscription" do

    before(:each) do
      @mock_http = mock('http')
      general_mailing_list = Refinery::Setting.get("general_mailing_list_subscribe_url".to_sym)
      Net::HTTP.stub!(:post_form, 'http://lists.progressbar.sk/').and_return(true)
      @first_email = "lorem@ipsum.sk"
      @second_email = "janko@hrasko.sk"
    end

    context "as anonymous user visiting homepage" do
      before {
        Refinery::Mailinglists::Subscriber.delete_all
      }

      it "should have mailing list form" do
        visit '/'

        page.should have_content('E-mailová konferencia')
        page.should have_selector("input[name='subscriber[email]']")
        page.should have_selector("input[name='subscriber[general]']")
        page.should have_selector("input[name='subscriber[events]']")
      end

      it "should subscribe email to events mailinglist" do
        visit '/'
        fill_in "subscriber[email]", :with => @first_email
        click_button 'Sign in'
        page.should have_content('Thank You')
        
        Refinery::Mailinglists::Subscriber.count().should == 1
        entry = Refinery::Mailinglists::Subscriber.find_by_email(@first_email)
        entry.email.should == @first_email
        entry.events.should == true
        entry.general.should == false
      end

      it "should subscribe exists email to general mailinglist" do
        FactoryGirl.create(:mailinglists_subscriber, :email => @first_email)
        visit '/'

        fill_in "subscriber[email]", :with => @first_email
        check "subscriber[general]"

        click_button 'Sign in'
        page.should have_content('Thank You') 

        Refinery::Mailinglists::Subscriber.count().should == 1
        entry = Refinery::Mailinglists::Subscriber.find_by_email(@first_email)
        entry.events.should == true
        entry.general.should == true
      end

      it "should unsubscribe exists email from events mailinglist" do
        FactoryGirl.create(:mailinglists_subscriber, :email => @first_email)
        visit '/'

        fill_in "subscriber[email]", :with => @first_email

        click_button 'Sign in'
        current_url.should match(Refinery::Setting.get(:events_mailing_list_unsubscribe_url))
        
        Refinery::Mailinglists::Subscriber.count().should == 1
        entry = Refinery::Mailinglists::Subscriber.find_by_email(@first_email)
        entry.events.should == false
        entry.general.should == false
      end

      it "should unsubscribe exists email from general mailinglist" do
        FactoryGirl.create(:mailinglists_subscriber, :email => @first_email, :general => true, :events => false)
        visit '/'

        fill_in "subscriber[email]", :with => @first_email
        check "subscriber[general]"

        click_button 'Sign in'
        current_url.should match(Refinery::Setting.get(:general_mailing_list_unsubscribe_url))
        
        Refinery::Mailinglists::Subscriber.count().should == 1
        entry = Refinery::Mailinglists::Subscriber.find_by_email(@first_email)
        entry.events.should == false
        entry.general.should == false
      end
    end

  end
end


