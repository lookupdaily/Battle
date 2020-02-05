feature 'getting players HP' do
    scenario 'displays brown sauce' do
        sign_in_and_play
        expect(page).to have_content('Player Jason: 100HP / Player Liz: 12HP')
    end
end