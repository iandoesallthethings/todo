require 'rails_helper'

feature 'User tries to create todo' do
  scenario 'successfully' do
    sign_in
    create_todo 'Get bread'

    expect(page).to display_todo "Get bread"
  end

  scenario 'without a title' do
    sign_in

    click_on 'Add a new todo'
    click_on 'Submit'

    expect(page).to have_css '.alert', text: 'Error: todo must have a title.'
  end
end
