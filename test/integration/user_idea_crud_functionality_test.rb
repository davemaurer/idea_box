require 'test_helper'

#users can create, edit/update, show, and destroy only their own ideas

class UserIdeaCrudFunctionalityTest < ActionDispatch::IntegrationTest
  include Capybara::DSL
  # test 'a user can create an idea' do
  #   user = User.create(first_name: "Bob", last_name: "Bobber", email: "bob@bobber.com", password: "password")
  #   visit new_idea_path
  #     fill_in "Title", with: "some bulllshit"
  #     fill_in "Body", with: "my genius idea"
  #   click_on "Submit New Idea"
  #   # save_and_open_page
  #   assert page.has_content?("Idea Created!")
  # end
end
