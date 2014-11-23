require 'rails_helper'

feature "Pitches" do
	scenario "create a new pitch" do
	count = Pitch.count
	expect{Pitch.create(title: "newest title", url: "www.espn.com", user_id:1)}.to change{Pitch.count}.by(1)

	
	end
end