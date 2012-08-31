# encoding: utf-8

require "spec_helper"

module Refinery

  describe "Registration" do

    before(:each) do
      @mock_http = mock('http')
      general_mailing_list = Refinery::Setting.get("general_mailing_list_subscribe_url".to_sym)
      Net::HTTP.stub!(:post_form, 'http://lists.progressbar.sk/').and_return(true)
      @first_reg = {:name => 'jurko janosik', :email => "jurko@ipsum.sk", :message => 'zbojnik, bohatym bral chudobnym daval' }
      @second_reg = {:name => 'rajnoja miazga', :email => "rajnoha@ipsum.sk", :message => 'miazgovec z tretieho kolena' }
      
      Refinery::Registrations::Registration.delete_all
    end

    context "as anonymous user visiting homepage" do
      before {
        
      }

      it "should have link to registration page" do
        visit '/'
        page.should have_selector('a[href="/pridaj-sa"]')
      end
    end

    context "as anonymous user visiting registration page" do      
      it "should successufull submit registration" do
        visit '/pridaj-sa'
        fill_in "registration[username]", :with => @first_reg[:name]
        fill_in "registration[email]", :with => @first_reg[:email]
        fill_in "registration[message]", :with => @first_reg[:message]
        click_button 'Send registration'
        page.should have_content('Thank You')
        current_url.should match('/registrations/thank_you')

        Refinery::Registrations::Registration.count().should == 1
        entry = Refinery::Registrations::Registration.find_by_email(@first_reg[:email])
        entry.state == 'unmoderated'
      end


      it "as registered user it should not submit new registration" do
        FactoryGirl.create(:registration, @first_reg)
        Refinery::Registrations::Registration.count().should == 1

        visit '/pridaj-sa'
        fill_in "registration[username]", :with => @first_reg[:name]
        fill_in "registration[email]", :with => @first_reg[:email]
        fill_in "registration[message]", :with => @first_reg[:message]
        click_button 'Send registration'

        within ".flash.error" do
          page.should have_content('You are probably a member or we have another your registration yet.')
        end

      end

      it "should receive invalid registration with short username, email and message" do

        visit '/pridaj-sa'
        fill_in "registration[username]", :with => 'xxx'
        fill_in "registration[email]", :with => 'xxx'
        fill_in "registration[message]", :with => 'xxx'
        click_button 'Send registration'

        within "#errorExplanation" do
          page.should have_content('Username je príliš krátky')
          page.should have_content('Email je príliš krátky')
          page.should have_content('Message je príliš krátky')
        end

      end

      it "should receive invalid registration with invalid email" do

        visit '/pridaj-sa'
        fill_in "registration[username]", :with => @first_reg[:name]
        fill_in "registration[email]", :with => 'xxxxxxxxxxxxxxxx'
        fill_in "registration[message]", :with => @first_reg[:message]
        click_button 'Send registration'

        within "#errorExplanation" do
          page.should have_content('Email nie je platná hodnota')
        end

      end

    end

  end
end


