require 'spec_helper'

module Refinery
  module Transactions
    describe Transaction do
      describe "validations" do
        subject do
          FactoryGirl.create(:transaction,
          :realized_at => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:realized_at) { should == "Refinery CMS" }
      end
    end
  end
end
