require_relative '../Page_file/landing_page_file'

# Open New Account
Given("Users Click on Open New Account")do
  @landing_page = Landing_Page.new(@driver)
  @landing_page.click_open_account
end

Then("User Selecting {string} type of account")do |type|
  @landing_page.select_type_account(type)
end



