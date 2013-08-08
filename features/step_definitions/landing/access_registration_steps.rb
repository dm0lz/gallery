Given(/^i am on home page$/) do
	visit root_path
	current_path.should == "/"
	#binding.pry
end

When(/^i click the Sign up link$/) do
	click_link "register"
end

Then(/^i should redirect to registration page$/) do
	current_path.should == new_user_registration_path
end