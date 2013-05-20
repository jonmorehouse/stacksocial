"
	This controller is responsible for messaging throughout our application

	posting to api/message with {:id => diffUser, :message} will message a different person
	posting to api/message with {:message} => will update the current user's status

"
class Api::MessageController < Api::BaseController


	def create(params)

			

	end


end
