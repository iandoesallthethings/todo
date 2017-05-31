require 'rails_helper'

feature 'User marks todo' do
  scenario 'completed' do
    sign_in
    create_todo 'Get bread'
    click_on 'Mark complete'

    expect(page).to display_completed_todo 'Get bread'
  end

  scenario 'incomplete' do
    sign_in
    create_todo 'Get bread'

    click_on 'Mark complete'
    click_on 'Mark incomplete'

    expect(page).not_to display_completed_todo 'Get bread'
    expect(page).to display_todo 'Get bread'
  end
end
