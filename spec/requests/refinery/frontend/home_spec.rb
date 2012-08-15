# encoding: utf-8

require "spec_helper"

module Refinery

  describe "Progressbar:Homepage" do
    before do
      visit '/'
    end

    context "as anonymous user visiting homepage" do

      it "should have title: Úvod .." do
        page.should have_selector('title', :content => 'Úvod - Progressbar Hackerspace')
      end

      it "should have logo with site name" do
        within "#logo" do
          page.should have_content(Refinery::Core.site_name)
        end
      end

      it "should introduce progressbar" do
        within "#promo-content" do
          # Vitajte na stránkach prvého slovenského <br /> <a href="http://en.wikipedia.org/wiki/Hackerspace">hackerspace</a> <strong>progressbar.sk</strong>.
          page.should have_content('Vitajte na stránkach prvého slovenského') 
        end
      end

      it "should have navigation links" do
        within "#lang" do
          page.should have_selector("a[href='/en']") # English version
        end

        within "#membership-actions" do
          page.should have_selector("a[href='/refinery/users/login']") # Login
          page.should have_selector("a[href='/pridaj-sa']") # Registration
        end
      end

    end

  end
end
