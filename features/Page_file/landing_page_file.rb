class Landing_Page < Generic_page
  def initialize(driver)
    @driver = driver
    # @generic_page = Generic_page.new(@driver)
    super(driver)

    # Open New Account
    @open_account = {link_text: "Open New Account"}
    @type_account = {xpath: "//select[@id ='type']"}

  end

  def click_open_account
    click_event(@open_account)
  end


def select_type_account(account_type)
  select_drop_by_text(@type_account, account_type)
end

end