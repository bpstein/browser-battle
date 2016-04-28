feature 'Displays loser' do
  scenario 'player hits 0HP first' do
    before do
      sign_in_and_play
      play_once
      allow(Kernel).to receive(:rand).and_return(60)
    end

  scenario 'Player 1 loses' do
    click_button 'Attack'
    expect(page).to have_content 'You lose!'
  end
end
end
