require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def valid_attributes
    {
      first_name: "dave",
      last_name:  "maurer",
      email:      "dave@dave.com",
      password:   "password"
    }
  end

  test "created user is valid" do
    user = User.new(valid_attributes)

    assert user.valid?
    assert_equal "dave", user.first_name
    assert_equal "maurer", user.last_name
    assert_equal "dave@dave.com", user.email
  end

  test "user without a first name is not valid" do
    user = User.new(last_name: "maurer", email: "dave@dave.com", password: "password")

    refute user.valid?
  end

  test "cannot create an email matching existing email" do
    2.times { User.create(valid_attributes) }

    result = User.where(email: "dave@dave.com")

    assert_equal 1, result.count
  end

  test "email must be between 3 and 50 characters" do
    user = User.new(first_name: "dave", last_name: "maurer", email: "dave@dave.com", password: "password")

    assert user.valid?

    user.email = "HI"

    refute user.valid?

    user.email = "ohyeahthisisgoingtobemorethanfiftycharactersyoucanbetonit"

    refute user.valid?
  end
end
