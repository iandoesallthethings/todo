require 'rails_helper'

feature 'User signs' do
  scenario 'in' do
    sign_in

    expect(page).to have_css 'span.welcome', text: 'Welcome, person@example.com'
  end

  scenario 'out' do
    sign_in

    click_on "Sign out"
    expect(page).not_to have_css 'span.welcome'
  end
end
