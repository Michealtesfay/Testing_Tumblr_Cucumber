Given(/^I am on the Homepage$/) do
expect(@browser.url).to eq"https://www.tumblr.com/dashboard"
end

Given(/^I select the text post$/) do
@browser.i(class: "icon_post_text").click
end

When(/^I enter the title "([^"]*)" into the title box$/) do |title|
@browser.div(class: "editor").send_keys title
end

When(/^I enter "([^"]*)" into the body field$/) do |body|
@browser.div(class: "editor-richtext").send_keys body
end

When(/^I select post$/) do
@browser.button(class: "create_post_button").click
end

When(/^I go to my home page$/) do
 expect(@browser.url).to eq"https://www.tumblr.com/dashboard"
end


