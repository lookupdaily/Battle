feature 'getting players names' do
  scenario "user enters names" do
    sign_in_and_play
    expect(page).to have_text "Player 1: Jason vs Player 2: Liz"
  end

end