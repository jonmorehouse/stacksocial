json.partial! 'json_partials/user'

json.profile do

	json.partial! 'json_partials/profile', profile: @current_profile
	
end