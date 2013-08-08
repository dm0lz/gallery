Given(/^i am a visitor$/) do
end

When(/^i go to home page$/) do
 	visit root_path
end

Then(/^i should see "(.*?)"$/) do |arg1|
	#binding.pry
	page.should have_content("Home#index")
	expect(page).to have_content("Home#index")
end

Then(/^i should see a link to register$/) do
	page.should have_content "Sign in"
end

