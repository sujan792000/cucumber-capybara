Given(/^I am on "([^"]*)"$/) do |destination_url|
  self.common_page.go_to(destination_url)
end

Then(/^I am presented with the "([^"]*)" homepage$/) do |expected_url|
  self.common_page.check_url(expected_url)
end