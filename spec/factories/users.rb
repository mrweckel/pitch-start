FactoryGirl.define do
	factory :user do
		username {Faker::Internet.user_name}
		password_digest {"123456"}
	end
end