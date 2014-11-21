require "rails_helper"

describe Pitch do

	before :each do
		@pitch = FactoryGirl.build(:pitch)
	end

	describe "is valid with title and url" do
		it {should validate_presence_of (:title, :url)}
	end

	it "returns the title as a string" do
		@pitch.title.is_a? String
	end

	it "returns the url as a string" do
		@pitch.url.is_a? String
	end

end