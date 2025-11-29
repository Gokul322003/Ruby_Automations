class Landing_Page
  def initialize(driver)
    @driver = driver

    # Open New Account
    @open_account = {link_text: "Open New Account"}
    @type_account = {xpath: "//select[@id ='type']"}

  end

  def click_open_account
    @driver.find_element(@open_account).click
  end


def select_type_account(account_type)
  drop = @driver.find_element(@type_account)
  option = Selenium::WebDriver::Support::Select.new(drop)
  option.select_by(:text,account_type)
end

end