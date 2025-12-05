require_relative '../Page_file/landing_page_file'
require 'selenium-webdriver'
require 'fileutils'
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

  def select_drop_by_text(element ,text)
    drop = @driver.find_element(element)
    option = Selenium::WebDriver::Support::Select.new(drop)
    option.select_by(:text,text)

  end



  def take_screenshot(driver, scenario_name, image_name)

    base_folder = "output"

    date_folder = Time.now.strftime("%Y-%m-%d")
    day_path = File.join(base_folder, date_folder)

    scenario_path = File.join(day_path, scenario_name)
    FileUtils.mkdir_p(scenario_path)

    timestamp = Time.now.strftime("%Y-%m-%d_%H-%M-%S")
    file_path = File.join(scenario_path, image_name+"_#{timestamp}.png")

    driver.save_screenshot(file_path)

  end


end

