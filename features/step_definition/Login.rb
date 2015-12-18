Given(/^I am on the tumblr login page$/) do
  @browser.goto "http://tumblr.com/login"
end

When(/^I input a invalid email$/) do
  @browser.text_field(id: "signup_email").send_keys "nightmar123@live.co.uk"
end

When(/^I input a invalid password$/) do
  @browser.text_field(id: "signup_password").send_keys "example"
end

When(/^I choose to login with invalid credentials$/) do
@browser.button(id: "signup_forms_submit").click
end

Then(/^I shouldn't be able to sucessfully log in to tumblr$/) do
  @browser.goto "http://tumblr.com/login"
end

Then(/^I should get an error message$/) do
	expect(@browser.ul_element).to match /^Your email or password !/
	print"filed"
end
When(/^I input a valid username "([^"]*)" into username box$/) do |email|
@browser.text_field(id: "signup_email").send_keys email
end

When(/^I input a valid password "([^"]*)" into password box$/) do |password|
@browser.text_field(id: "signup_password").send_keys password
end

When(/^I choose to login$/) do
@browser.button(id: "signup_forms_submit").click
end

Then(/^I should be able to access my home Page$/) do
expect(@browser.url).to eq"https://www.tumblr.com/dashboard"
end
