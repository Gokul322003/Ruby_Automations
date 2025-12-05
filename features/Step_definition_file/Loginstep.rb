Given("I am on the registration page") do
  @page = LoginPage.new(@driver)
  @page.registration
end

When("I fill the registration form") do
  data = {
    first_name: "Joh",
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

Given("I login as {string}") do |user|
    username = TESTDATA["Userid"][user]
    password = TESTDATA["Password"][user]

    @page.login(username, password)
  end

Then("Verify the Login is successful with {string}") do |text|
  @welcome_text = @page.verify_login
  expect @welcome_text.include?(text)
end



