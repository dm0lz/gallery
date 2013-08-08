Before do 
	@album = FactoryGirl.create(:album)
end

Given(/^i am on the new album page$/) do
	visit new_album_path
end

When(/^i fill in cover$/) do
	#fill_in "Cover", :with => @album.cover
end

When(/^i fill in title$/) do
	#fill_in "Title", :with => @album.title
end

When(/^i click create album button$/) do
	#click_button "Create Album"
end

Then(/^the album should be created$/) do
	#binding.pry
	#page.body.should have_content "Album was successfully created."
end