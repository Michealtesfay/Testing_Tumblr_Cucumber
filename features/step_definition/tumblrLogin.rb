
When(/^I enter my correct username into the username box$/) do
	 @browser.goto "http://tumblr.com/login"
	 @browser.text_field(id: "signup_email").send_keys "nightmar@live.co.uk"
end

When(/^I enter my correct password into the password box$/) do
@browser.text_field(id: "signup_password").send_keys "example2"
end

When(/^I choose the Log in button$/) do
 @browser.button(id: "signup_forms_submit").click
end

Then(/^I should be redirected to my dashboard$/) do
 @browser.button(id: "signup_forms_submit").click
end

