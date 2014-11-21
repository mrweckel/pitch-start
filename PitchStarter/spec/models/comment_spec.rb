require "rails_helper"

describe Comment do

	before :each do
		@comment = FactoryGirl.build(:comment)
	end

	describe "is valid with content" do
		it {should validate_presence_of (:content)}
	end

end