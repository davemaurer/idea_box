require 'test_helper'

class UserCreationTest < ActionDispatch::IntegrationTest
  test 'a user can be created' do
    visit new_user_path
    fill_in "First name", with: "dave"
    fill_in "Last name", with: "maurer"
    fill_in "Email", with: "dave@dave.com"
    fill_in "Password", with: "password"
    click_button "Create Account"

    assert page.has_content?("Welcome, dave")
  end
end
