feature 'attack' do
    scenario 'player 1 attacks player 2' do
        sign_in_and_play
        click_button("player_1_attack")
        expect(page).to have_content('Player 1 attacked Player 2!!')
    end
end