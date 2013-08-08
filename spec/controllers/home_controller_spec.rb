require 'spec_helper'

describe HomeController do

	render_views

	describe "GET 'index'" do

		it "returns http success" do
		    get 'index'
		    response.should be_success
		    #binding.pry
		end

		it "renders the header template" do
			get 'index'
		    response.should render_template("layouts/_header")
		end

	end

end
