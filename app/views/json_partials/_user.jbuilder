json.current_user do |user|
	
	# include element
	json.(@user, :created_at, :twitter_id, :uid)

	# include our basic profile element
	json.profile do  
		json.partial! 'json_partials/profile', profile: @user.profile
	end
		
end

