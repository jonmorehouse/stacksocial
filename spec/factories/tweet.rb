"
	Create a basic tweet for storage  / look up etc
"
FactoryGirl.define do

	factory :tweet, :class => Tweet do |f|

		field :html "<div>#{Faker::Lorem.characters(55)}</div>"
		field :twitter_id Faker::Lorem.characters(20)
		field :date_saved Time.now
		field :tweet_id Faker::Lorem.characters(20)		

	end

end
