Feature: visitor is landing 

	In order to consult the website
	As a visitor
	I want to access landing page

	Scenario: Visitor visits home page
		Given i am a visitor
		When i go to home page
		Then i should see "Home#index"
		And i should see a link to register

	Scenario: Visitor gets to registration page
		Given i am a visitor
		And i am on home page
		When i click the Sign up link
		Then i should redirect to registration page

