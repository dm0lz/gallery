

Given(/^i am a logged in user$/) do
	@user = FactoryGirl.create(:user)
	sign_in
end

Given(/^i see a create album$/) do
	page.should have_content("Create an Album")
end

When(/^i click the create album button$/) do
	click_link "Create an Album"
end

Then(/^i should get to a new album create page$/) do
	current_path.should == new_album_path
end


