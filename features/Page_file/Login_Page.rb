class LoginPage
  def initialize(driver)
    @driver = driver

    @fields = {
      first_name: { id: "customer.firstName" },
      last_name: { id: "customer.lastName" },
      address: { id: "customer.address.street" },
      city: { id: "customer.address.city" },
      state: { id: "customer.address.state" },
      zipcode: { id: "customer.address.zipCode" },
      phone: { id: "customer.phoneNumber" },
      ssn: { id: "customer.ssn" },
      username: { id: "customer.username"},
      password: { id: "customer.password"},
      confirm: { id: "repeatedPassword"}


    }

    @register_link = { xpath: "//a[text()='Register']" }
    @register_button ={ xpath: "//input[@value='Register']"}
    @username = {xpath: "//input[@name='username']"}
    @password = {xpath: "//input[@name='password']"}
    @login_btn = {xpath: "//input[@value='Log In']"}
    @welcome_text = {xpath: "//div[@id ='leftPanel']/p"}


  end

  def registration
    @driver.find_element(@register_link).click
  end

  def fill_field(field, value)
    @driver.find_element(@fields[field]).send_keys(value)
  end

  def fill_form(data)
    data.each do |field, value|
      fill_field(field, value)
    end
    end

    def register_btn
      @driver.find_element(@register_button).click
    end

    def login(username, password)
      @driver.find_element(@username).send_keys(username)
      @driver.find_element(@password).send_keys(password)
      @driver.find_element(@login_btn).click
    end
  def verify_login()
    @driver.find_element(@welcome_text).text

  end


  end

