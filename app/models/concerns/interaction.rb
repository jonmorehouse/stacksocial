"
	Create a basic model mixin that allows for the seperation of messaging logic
	You can message a different user than your own here
	Can also update your own status
"
module Concerns::Interaction

	extend ActiveSupport::Concern

	included do	

		"
			Any extra attributes that are needed go in here!
		"
	end


	# update your own custom status
	def update(contents)

								


	end

	# message a different user
	def message(twitter_id, contents)



	end


end
