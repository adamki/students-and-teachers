require 'test_helper'

class StudentCanCreateAccountTest < ActionDispatch::IntegrationTest

  def test_student_can_create_an_account_with_valid_attributes
    assert_equal 0, User.count
    visit '/'
    click_link("Create ")
    fill_in "user[name]", with: "Timothy"
    fill_in "user[password]", with: "asdf"
    click_on "Create Account"
    assert_equal 1, User.count
  end

end
