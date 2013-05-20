"
	Initialize factories for valid / invalid user testing based on twitter oauth rack middleware

	Create a valid access_token / twitter key / token user
"
FactoryGirl.define do

	factory :user, :class => User do |f|

		f.secret ENV['TWITTER_ACCESS_TOKEN_SECRET']	
		f.key ENV['TWITTER_ACCESS_TOKEN_SECRET']
		f.uid ENV['TWITTER_UID']
		f.twitter_id ENV['TWITTER_UID']

	end
end

# initialize a broken user with invalid parameters etc
FactoryGirl.define do

	factory :invalid_user, :class => User do |f|

		f.secret Faker::Lorem.characters(25)
		f.key Faker::Lorem.characters(25)
		f.key Faker::Lorem.characters(13)

	end
end


