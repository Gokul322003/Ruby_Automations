require_relative '../Page_file/Generic_page_file'
@generic_page = Generic_page.new(@driver)


Given("I am on the registration page") do
  @page = LoginPage.new(@driver)
  @page.registration
end

When("I fill the registration form") do
  data = {
    first_name: "John",
    last_name: "Snow",
    address: "123 Main St",
    city: "NYC",
    state: "NY",
    zipcode: "10001",
    phone: "1234567890",
    ssn: "5555",
    username: "johnsnow",
    password: "password",
    confirm: "password"

    }


  @page.fill_form(data)
end

Then("the registration should be successful") do
  # you can add assertion here
  sleep(10)

  puts "Registration submitted successfully!"
end


And("Click the Registration Button")do
  @page.register_btn
end


Then("Take Screenshot of scenario {string} and the file name is {string}") do |scenario_name, image_name|
  @generic_page.take_screenshot(scenario_name,image_name)
end


Given("I login as {string}") do |user|
    username = TESTDATA["Userid"][user]
    password = TESTDATA["Password"][user]

    @page.login(username, password)
  end

Then("Verify the Login is successful with {string}") do |text|
  @welcome_text = @page.verify_login
  expect(@welcome_text).to eq(text)
  p @welcome_text
 end



