module AccessHelpers

	def sign_in
		visit new_user_session_path
		fill_in "user_email", :with => @user.email
		fill_in "user_password", :with => @user.password
		#fill_in "user_password_confirmation", :with => @user.password
		#click_button "Sign up"
		click_button "Sign in"
	end

end


World(AccessHelpers)