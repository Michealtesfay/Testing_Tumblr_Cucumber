Given(/^I am on the tumblr login page$/) do
  @br = @App.tumblr_login
  @br.visit
end

When(/^I input a invalid email$/) do
  @browser.text_field(id: "signup_email").send_keys "nightmar123@live.co.uk"
end

When(/^I input a invalid password$/) do
  @browser.text_field(id: "signup_password").send_keys "example"
end

When(/^I choose to login with invalid credentials$/) do
   @br.login_button
end

Then(/^I shouldn't be able to sucessfully log in to tumblr$/) do
  #@browser.goto "http://tumblr.com/login"
  expect(@a.url).to match /.*login/
end

Then(/^I should get an error message$/) do
		expect(@br.ul_element).to match /Your email or password were incorrect/

end
When(/^I input a valid username "([^"]*)" into username box$/) do |email|
@br.set_email(email)	
end

When(/^I input a valid password "([^"]*)" into password box$/) do |password|
@br.set_password(password)
end

When(/^I choose to login$/) do
@a.login_button
end

Then(/^I should be able to access my home Page$/) do
expect(@br.url).to match /.*dashboard/
end
