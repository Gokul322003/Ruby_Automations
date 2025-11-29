Before do
  @driver = Browser.driver
  @driver.manage.timeouts.implicit_wait = 10
  @driver.navigate.to("https://parabank.parasoft.com")
  @page = LoginPage.new(@driver)
end

After do
  @driver.quit
  end