Before do
  @driver = Browser.driver
  @driver.manage.timeouts.implicit_wait = 10
end

After do
  @driver.quit
  end