class CommonPage
  include Capybara::DSL
  include RSpec::Matchers

  def go_to(destination_url)
    visit(destination_url)
  end

  def check_url(expected_url)
    expect(current_url).to(eq(expected_url))
  end

end