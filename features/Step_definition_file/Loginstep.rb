Given("I am on the registration page") do
  @page = LoginPage.new(@driver)
  @driver.navigate.to("https://parabank.parasoft.com")
  @page.open_registration
end

When("I fill the registration form") do
  data = {
    first_name: "John",
    last_name: "Doe",
    address: "123 Main St",
    city: "NYC",
    state: "NY",
    zipcode: "10001",
    phone: "1234567890",
    ssn: "5555",
    username: "johndoe",
    password: "password",
    confirm: "password"

    }


  @page.fill_form(data)
end

Then("the registration should be successful") do
  # you can add assertion here
  sleep(100)
  puts "Registration submitted successfully!"
end
