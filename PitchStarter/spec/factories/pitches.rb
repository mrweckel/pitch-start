FactoryGirl.define do
	factory :pitch do
		title {Faker::Lorem.word}
		url {Faker::Internet.url}
	end
end