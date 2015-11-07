require 'test_helper'

class UserCanCreateAccountTest < ActionDispatch::IntegrationTest

  def test_student_can_create_an_account_with_valid_attributes
    visit '/'
    click_link("Create ")
    fill_in "user[name]", with: "Timothy"
    fill_in "user[password]", with: "asdf"
    click_on  "Create Account"
  end

end
