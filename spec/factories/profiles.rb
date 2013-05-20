# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do

	factory :profile, :class => Profile do |f|

		f.name Faker::Name.name
		f.description Faker::Lorem.characters(100)
		f.profile_image_url Faker::Internet.url
		f.twitter_id Faker::Lorem.characters(20)

	end
end
