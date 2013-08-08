Feature: User registers

	In order to access the app
	As a visitor
	I want to be able to register

	Scenario: User registers with valid email and password
		Given i am a visitor
		And i am on the registration page
		When i enter my email
		And i enter my password
		And i enter my password confirmation
		And i click the link
		Then i should have registered