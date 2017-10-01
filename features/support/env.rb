require('capybara/cucumber')
require('rspec/expectations')

Capybara.default_driver = :selenium

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :selenium_chrome
Capybara.javascript_driver = :selenium_chrome
Capybara.default_max_wait_time = 10

module CustomWorld

  def common_page
    CommonPage.new
  end

  def google_page
    GooglePage.new
  end

end

World(CustomWorld)