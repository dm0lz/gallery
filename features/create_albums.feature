Feature: User creates an Album

	As a user
	I want to create an album
	So that i can upload pictures

	Scenario: user redirects to new album page
		Given i am a logged in user
		And i see a create album
		When i click the create album button
		Then i should get to a new album create page

	Scenario: user creates new album
		Given i am a logged in user
		And i am on the new album page
		When i fill in cover
		And i fill in title
		And i click create album button
		Then the album should be created