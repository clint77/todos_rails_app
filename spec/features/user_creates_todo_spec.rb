require "rails_helper"

feature "User creates todo" do
  scenario "successfully" do
    sign_in

    click_on "Add a new todo"
    fill_in "Title", with: "code code code"
    click_on "Submit"

    expect(page).to have_css ".todos li", text: "code code code"
  end
end