class Landing_Page
  def initialize(driver)
    @driver = driver
    @generic_page = Generic_page.new(@driver)

    # Open New Account
    @open_account = {link_text: "Open New Account"}
    @type_account = {xpath: "//select[@id ='type']"}

  end

  def click_open_account
    @generic_page.click_event(@open_account)
    @generic_page.take_screenshot(@driver, "Landing_Page", "Open_account")
  end


def select_type_account(account_type)
  @generic_page.select_drop_by_text(@type_account, account_type)
end

end