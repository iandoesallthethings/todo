require 'rails_helper'

feature 'User marks todo' do
  scenario 'completed' do
    sign_in

    click_on 'Add a new todo'
    fill_in 'Title', with: 'Get bread'
    click_on 'Submit'

    click_on 'Mark complete'

    expect(page).to have_css '.todos li.completed', text: 'Get bread'
  end
end
