require 'spec_helper'

feature "infrastructure test" do
  scenario 'user visits homepage' do
    visit "/"

    expect(page).to have_text("Testing infrastructure working!")
  end
end