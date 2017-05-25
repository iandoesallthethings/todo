require 'rails_helper'

feature 'User creates todo' do
  scenario 'successfully' do
    visit root_path

    click_on 'Add a new todo'
    fill_in 'Title', with: 'Get bread'
    click_on 'Submit'

    expect(page).to have_css '.todos li', text: 'Get bread'
  end

  scenario 'unsuccsessfully' do
    visit root_path

    click_on 'Add a new todo'
    click_on 'Submit'

    expect(page).to have_css '.alert', text: 'Error: todo must have a title.'
  end
end
