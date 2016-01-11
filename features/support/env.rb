require 'capybara'
require 'rspec'

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :selenium
end
