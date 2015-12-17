Feature: Logging in to Tumblr
  Background:  I'm on the Tumblr Log In page

    Scenario: Logging in with correct credentials
      When I enter my correct username into the username box
      And I enter my correct password into the password box
      And I choose the Log in button
      Then I should be redirected to my dashboard