require 'test_helper'

class UserCanViewHomePageTest < ActionDispatch::IntegrationTest

  def test_user_sees_homepage
    visit '/'
    assert page.has_content?("Welcome")
    assert find_link("Login").visible?
    assert find_link("Create Account").visible?
  end

end
