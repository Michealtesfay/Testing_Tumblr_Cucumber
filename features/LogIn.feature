
Feature: Logging in to Tumblr
  Background:  I'm on the Tumblr Log In page 
		Given I am on the tumblr login page

	Scenario: Unsuccessful login with invalid login credentials
		When I input a invalid email
		When I input a invalid password 
		And I choose to login with invalid credentials
		Then I shouldn't be able to sucessfully log in to tumblr
		And I should get an error message
		
Scenario: Successful login with  valid login credentials
		When I input a valid username "nightmar@live.co.uk" into username box 
		And I input a valid password "example2" into password box
		And I choose to login
		Then I should be able to access my home Page