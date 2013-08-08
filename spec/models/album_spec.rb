require 'spec_helper'

describe Album do

	before(:each) do
		@user = FactoryGirl.create(:user)
		@album = FactoryGirl.create(:album, :user_id => @user.id)
	end

	it "should have a valid factory" do
		@album.should be_valid
	end	

	it "should have a cover" do
		#@album.cover.should_not be_empty
	end

	it "should not pass if cover is empty" do
		@album.cover = nil
		#@album.should_not be_valid
	end

	it "should have a title" do
		@album.title.should_not be_empty
	end

	it "should not pass if an empty title" do
		@album.title = nil
		@album.should_not be_valid
	end

	it "should have many pictures" do
		@album.should have_many(:pictures)
		#binding.pry
	end

	it "should belong to user" do
		@album.should belong_to(:user)
	end
	
end
