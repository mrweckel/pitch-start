FactoryGirl.define do
	factory :pitch do
		title {Faker::Lorem.word}
		url {"https://www.youtube.com/watch?v=rfh4Mhp-a6U"}
	end
end