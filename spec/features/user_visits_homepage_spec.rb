require "rails_helper"

feature "User visits homepage" do
  scenario "successfully" do
    visit root_path # or "/"

    expect(page).to have_css 'h1', text: 'Todos'
  end
end
