Before do
	@user = FactoryGirl.create(:user)
	DatabaseCleaner.clean
end
After do
	#DatabaseCleaner.clean
end

Given(/^i am on the registration page$/) do
  visit new_user_registration_path
  current_path.should == "/users/sign_up"
end

When(/^i enter my email$/) do
	fill_in "user_email", :with => @user.email
end

When(/^i enter my password$/) do
  	fill_in "user_password", :with => @user.password
end

When(/^i enter my password confirmation$/) do
	fill_in "user_password_confirmation", :with => @user.password
end

When(/^i click the link$/) do
	#binding.pry
	#click_button "Sign up"
	#current_path.should == "/"
end

Then(/^i should have registered$/) do
	#binding.pry
	#page.should have_content "Welcome! You have signed up successfully."
end