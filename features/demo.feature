Feature: Demo
  As a User,
  Google searching should work on all platforms

  @C001 @smokeTest @regression
  Scenario: Google Search - Appium
    Given I am on "http://www.google.com"
    When I search for "Cucumber"
    And select "Cucumber" in the search results
    Then I am presented with the "https://cucumber.io/" homepage

  @C002 @regression
  Scenario: Google Search - Capybara
    Given I am on "http://www.google.com"
    When I search for "Capybara"
    And select "GitHub - teamcapybara/capybara" in the search results
    Then I am presented with the "https://github.com/teamcapybara/capybara" homepage

  @C003 @smokeTest @regression
  Scenario: Google Search - RubyMine
    Given I am on "http://www.google.com"
    When I search for "RubyMine"
    And select "JetBrains RubyMine" in the search results
    Then I am presented with the "https://www.jetbrains.com/ruby/" homepage