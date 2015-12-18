Feature: Posting a post on tumblr
  Scenario: Post a Title and Body on tumblr
  Given I am on the Homepage
  And I select the text post
  When I enter the title "Hello" into the title box
  And I enter "Testing tumblr using cucumber and watir" into the body field
  And I select post
  And I go to my home page
  