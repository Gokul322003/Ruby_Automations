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
  end

  def open_registration
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
end
