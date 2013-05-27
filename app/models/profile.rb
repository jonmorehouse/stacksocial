"
	Models are the basic class for users and interaction etc
	These live after the duration of our element
"
class Profile

	include Mongoid::Document
	include Concerns::Interaction


  	field :followers, type: Array
  	field :friends, type: Array
    field :name, type: String
    field :description, type: String
    field :profile_image_url, type: String
    field :twitter_id, type: String
    has_many :tweets
    belongs_to :user

    # validate the presence of an element
    validates_presence_of :name, :description, :profile_image_url, :twitter_id

 	# require that the profile is created with a twitter object being passed in! 
	def self.create_profile(twitter)

		begin

			return Profile.find_by(twitter_id: twitter.user.id)

		rescue Mongoid::Errors::DocumentNotFound

			return Profile.create_document twitter.user
		end
	end

	"
		Get a profile from our database
		if it doesn't exist, create the document and return the profile
	"
	def self.get_profile(twitter_id, twitter)

		begin

			return Profile.find_by(twitter_id: twitter_id)

		rescue Mongoid::Errors::DocumentNotFound

			return Profile.create_document twitter.user twitter_id

		end
	end

	private
	"
		create a document in the database given a Twitter::User object
	"
	def self.create_document(user)

		create! do |profile|

			# now cache the fields we want etc
			profile.name = user.name
			# cache the user profile image
			profile.profile_image_url = user.profile_image_url
			# cache our description
			profile.description = user.description
			# now update tweets
			profile.twitter_id = user.id

		end

		return profile

	end
end
