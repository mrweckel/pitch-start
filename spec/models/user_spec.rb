require "rails_helper"

describe User do

	before :each do
		@user = FactoryGirl.build(:user)
	end

	describe "is valid with username" do
		it {should validate_presence_of (:username)}
	end


	describe "is valid with unique username" do
		it {should validate_uniqueness_of (:username)}
	end

end