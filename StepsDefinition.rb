require "rspec/expectations"
require "watir"
require 

Given /^I have entered "([^"]*)" into the search field$/ do |term|
@browser ||= Watir::Browser.new :firefox
@browser.goto "google.com"
end

When /^I click "([^"]*)"$/ do |button_name|
@browser.button.click 
end 

Then /^I should see message box$/ do
@browser.div(:id => "msg_box").wait_until_present
@browser.div(:id => "msg_box").should exist
@browser.close
end