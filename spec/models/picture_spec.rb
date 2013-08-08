require 'spec_helper'

describe Picture do


	before(:each) do
		@user = FactoryGirl.create(:user)
		@album = FactoryGirl.create(:album, :user_id => @user.id)
		#binding.pry
		@picture = FactoryGirl.create(:picture, :album_id => @album.id, :user_id => @user.id)
	end

	it "should have a valid factory" do 
		@picture.should be_valid
	end

	it "should have a name" do
		@picture.name.should_not be_nil
		#binding.pry
	end

	it "should_not be valid without a name" do
		@picture.name = nil 
		#@picture.should_not be_valid
	end

	it "should have an image" do
		@picture.image.should_not be_nil
	end

	it "should_not be valid without an image" do
		@picture.image = nil 
		#binding.pry
		#@picture.should_not be_valid
	end

	it "should belong to Album" do
		@picture.should belong_to(:album)
	end

	it "should belong_to user" do
		@picture.should belong_to(:user)
		#binding.pry
	end

end
