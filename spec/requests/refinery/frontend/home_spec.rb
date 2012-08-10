# encoding: utf-8

require "spec_helper"

module Refinery

  describe "Progressbar:Homepage" do

    context "as anonymous users" do

      it "should introduce progressbar" do
        visit '/'

        page.should have_selector('title', :content => 'Úvod - Progressbar Hackerspace')

        within "#logo" do
          page.should have_content(Refinery::Core.site_name)
        end

        within "#promo-content" do
          # Vitajte na stránkach prvého slovenského <br /> <a href="http://en.wikipedia.org/wiki/Hackerspace">hackerspace</a> <strong>progressbar.sk</strong>.
          page.should have_content('Vitajte na stránkach prvého slovenského') 
        end
      end

    end

  end
end
