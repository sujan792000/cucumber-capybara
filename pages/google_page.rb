class GooglePage < CommonPage
  include Capybara::DSL

  def perform_search(search_text)
    search_box
        .send_keys(search_text)
        .send_keys(:enter)
    # sleep(5)
  end

  def select_result(expected_link)

    # puts("search results visible: #{search_results.visible?}")

    search_results.each do |result|
      if(result.text.include?(expected_link))
        puts("clicking result: #{result.text}")
        result.click
        break
      end
    end

  end

  def search_box
    find('#lst-ib')
  end

  def search_results
    # find_all('#ires .g .r a', {:count => 10})
    # find_all('#ires .g .r a', count: 10)
    find_all('#ires .g .r a', minimum: 1)
  end

end