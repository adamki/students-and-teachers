require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def test_it_creates_user_with_valid_attributes
    starting_user_count = User.count
    user = User.new(name: "Timothy", password: "password")
    assert user.valid?
    user.save
    assert_equal (starting_user_count + 1), User.count
  end
end
