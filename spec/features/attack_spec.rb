feature 'attack' do
    scenario 'player 1 attacks player 2' do
        sign_in_and_play
        click_button("player_1_attack")
        expect(page).to have_content('Player 1 attacked Player 2!!')
    end

    scenario "player 1's attack reduces player 2's HP" do
        sign_in_and_play
        click_button("player_1_attack")
        # expect(page).not_to have_content('Player Jason: 100HP / Player Liz: 100HP')
        expect(page).to have_content('Player Jason: 100HP / Player Liz: 90HP')
    end
end