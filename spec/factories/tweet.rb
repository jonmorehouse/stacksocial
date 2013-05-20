"
	Create a basic tweet for storage  / look up etc
"
FactoryGirl.define do

	factory :tweet, :class => Tweet do |f|


		f.html "<div>#{Faker::Lorem.characters(55)}</div>"
		f.twitter_id Faker::Lorem.characters(20)
		f.date_saved Time.now
		f.tweet_id Faker::Lorem.characters(20)

	end

end
