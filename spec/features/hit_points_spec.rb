feature 'getting players HP' do
    scenario 'displays brown sauce' do
        visit '/play'
        expect(page).to have_content('Player 1: 100HP / Player 2: 12HP')
    end
end