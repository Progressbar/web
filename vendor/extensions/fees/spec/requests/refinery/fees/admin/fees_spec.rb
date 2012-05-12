# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Fees" do
    describe "Admin" do
      describe "fees" do
        login_refinery_user

        describe "fees list" do
          before(:each) do
            FactoryGirl.create(:fee, :currency => "UniqueTitleOne")
            FactoryGirl.create(:fee, :currency => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.fees_admin_fees_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before(:each) do
            visit refinery.fees_admin_fees_path

            click_link "Add New Fee"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Currency", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Fees::Fee.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Currency can't be blank")
              Refinery::Fees::Fee.count.should == 0
            end
          end

          context "duplicate" do
            before(:each) { FactoryGirl.create(:fee, :currency => "UniqueTitle") }

            it "should fail" do
              visit refinery.fees_admin_fees_path

              click_link "Add New Fee"

              fill_in "Currency", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Fees::Fee.count.should == 1
            end
          end

        end

        describe "edit" do
          before(:each) { FactoryGirl.create(:fee, :currency => "A currency") }

          it "should succeed" do
            visit refinery.fees_admin_fees_path

            within ".actions" do
              click_link "Edit this fee"
            end

            fill_in "Currency", :with => "A different currency"
            click_button "Save"

            page.should have_content("'A different currency' was successfully updated.")
            page.should have_no_content("A currency")
          end
        end

        describe "destroy" do
          before(:each) { FactoryGirl.create(:fee, :currency => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.fees_admin_fees_path

            click_link "Remove this fee forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Fees::Fee.count.should == 0
          end
        end

      end
    end
  end
end
