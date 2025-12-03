class Generic_page
  def initialize (driver)
    @driver = driver



  end

  def click_event(element)
  @driver.find_element(element).click
  end

  def send_key_event(element,key)
    @driver.find_element(element).send_keys(key)
  end

  def grab_text(element)
    @driver.find_element(element).text

  end

  def select_drop_by_text(text)
    drop = @driver.find_element(@type_account)
    option = Selenium::WebDriver::Support::Select.new(drop)
    option.select_by(:text,text)

    end

  end

