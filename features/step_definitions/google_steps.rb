When(/^I search for "([^"]*)"$/) do |search_text|
  self.google_page.perform_search(search_text)
end

When(/^select "([^"]*)" in the search results$/) do |expected_link|
  self.google_page.select_result(expected_link)
end