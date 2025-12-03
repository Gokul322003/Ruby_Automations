require 'selenium-webdriver'
require 'cucumber'
require 'yaml'

require_relative '../../Config/browser'





ENVIRONMENT = ENV['ENV'] || 'para'
CONFIG = YAML.load_file('environment.yml')[ENVIRONMENT]

TESTDATA = YAML.load_file('testdata.yml')