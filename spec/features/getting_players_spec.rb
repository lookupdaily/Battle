feature 'getting players names' do
  scenario "user enters names" do
    visit "/"

    fill_in "player_1", with: "Jason"
    fill_in "player_2", with: "Liz"
    click_button "Submit"

    expect(page).to have_text "Player 1: Jason vs Player 2: Liz"
  end

end