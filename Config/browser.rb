require 'selenium-webdriver'
class Browser
  def self.driver
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument("--start-maximized")
    Selenium::WebDriver.for :chrome, options: options

  end
end