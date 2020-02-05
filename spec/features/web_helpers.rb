def sign_in_and_play
  visit "/"

    fill_in "player_1", with: "Jason"
    fill_in "player_2", with: "Liz"
    click_button "Submit"
end