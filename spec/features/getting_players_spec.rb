feature 'getting players names' do
  scenario "user enters names" do
    visit "/"

    fill_in "name", with: "Jason"
    click_button "Submit"

    expect(page).to have_text "Jason"
  end
end