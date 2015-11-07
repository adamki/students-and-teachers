ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'database_cleaner'
require 'rails/test_help'
require 'minitest/rails/capybara'
require 'launchy'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

end

class ActionDispatch::IntegrationTest
  include Capybara::DSL
end

def setup
  DatabaseCleaner.start
end

def teardown
  DatabaseCleaner.clean
end
