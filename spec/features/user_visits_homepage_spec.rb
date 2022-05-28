require "rails_helper"

RSpec.feature "User visits homepage" do
  scenario "User navigates to base URL" do
    visit "/"

    expect(page).to have_text("Tumbleweed")
  end
end