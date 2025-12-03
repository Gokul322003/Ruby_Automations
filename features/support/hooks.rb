Before do
  @driver = Browser.driver
  @driver.manage.timeouts.implicit_wait = 10
  # @driver.navigate.to("https://parabank.parasoft.com")
  @base_url = CONFIG['base_url']
  @driver.navigate.to(@base_url)
  @page = LoginPage.new(@driver)
  @generic_page = Generic_page.new(@driver)



end

After do
  @driver.quit
  end