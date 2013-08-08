require 'spec_helper'

describe User do

	before(:each) do
		@user = FactoryGirl.create(:user)
	end

	it "should have a valid factory" do
		@user.should be_valid
	end

	it "should not be valid with blank email" do
		@user.email = nil
		@user.should_not be_valid
	end

	it "should have an email" do
		@user.email.should_not be_nil
	end

	it "should ensure the email is uniq" do
		# joe has same email than user
		expect { FactoryGirl.create(:joe) }.to raise_error
	end

	it "should not be valid with a blank password" do
		@user.password = nil
		@user.should_not be_valid
	end

	it "should have a password" do
		@user.password.should_not be_nil
	end



end
