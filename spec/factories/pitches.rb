FactoryGirl.define do
	factory :pitch do
		title {Faker::Lorem.word}
		url {Faker::Internet.url}
		user_id {1}
	end
end