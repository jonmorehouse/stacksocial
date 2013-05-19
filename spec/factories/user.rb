"
	Initialize factories for valid / invalid user testing based on twitter oauth rack middleware

	Create a valid access_token / twitter key / token user
"
FactoryGirl.define do

	factory :valid_user do |f|

		f.secret ENV['TWITTER_ACCESS_TOKEN_SECRET']	
		f.key ENV['TWITTER_ACCESS_TOKEN_SECRET']
		f.uid ENV['TWITTER_UID']

	end
end

FactoryGirl.define do

	factory :invalid_user do |f|

		f.secret Faker::Lorem.characters(25)
		f.key Faker::Lorem.characters(25)
		f.key Faker::Lorem.characters(13)

	end

end


