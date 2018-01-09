require "rails_helper"

# With this code we simulate a visit to the login page, starting from the home page.
# Then we fill the form and submit it. Finally, we check if we have the
# #user-settings element on the navigation bar, which is available only for signed in users

RSpec.feature "Login", :type => :feature do
  let(:user) { create(:user) }

  scenario 'user navigates to the login page and succesfully logs in', js: true do
    user
    visit root_path
    find('nav a', text: 'Login').click
    fill_in 'user[email]', with: user.email
    fill_in 'user[password]', with: user.password
    find('.login-button').click
    expect(page).to have_selector('#user-settings')
  end

end
