require 'test_helper'

class UserLoginTest < ActionDispatch::IntegrationTest
  test "a user that exists can log in" do
    user = User.create(first_name: "dave", last_name: "maurer", email: "dave@dave.com", password: "password", role: 1)
    visit login_path
    fill_in "Email", with: user.email
    fill_in "Password", with: "password"
    click_button "Login"

    assert page.has_content?("Welcome, dave")
  end
end
