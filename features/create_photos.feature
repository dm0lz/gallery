Feature: User creates a picture inside an album

	As a user
	I want to be able to upload photos
	So that i can watch my albums online

	Scenario: user creates a picture
		Given i am on an album page
		And i have a link to upload pictures
		When i click the link
		Then i should upload pictures