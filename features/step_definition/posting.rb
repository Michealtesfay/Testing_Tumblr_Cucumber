Given(/^I am on the Homepage$/) do
	@browser = @App.tumblr_dashboard
expect(@browser.url).to eq"https://www.tumblr.com/dashboard"
end

Given(/^I select the text post$/) do
 @browser.text_post_button
end

When(/^I enter the title "([^"]*)" into the title box$/) do |title|
#@browser.div(class: "editor").send_keys title
@browser.set_title(title)
end

When(/^I enter "([^"]*)" into the body field$/) do |body|
 @browser.set_body(body)
end

When(/^I select post$/) do
@browser.submit_post
end

When(/^I go to my home page$/) do
 @browser.visit_blog
end

Then(/^I should see my post on the blog with the correct title and body$/) do
	@browser.verification
end

Then(/^I should be able to delete the the post I made$/) do
@browser.delete
end
