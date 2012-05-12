require 'spec_helper'

module Refinery
  module Fees
    describe Fee do
      describe "validations" do
        subject do
          FactoryGirl.create(:fee,
          :currency => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:currency) { should == "Refinery CMS" }
      end
    end
  end
end
