feature 'Displays loser' do

  # before do
  #   sign_in_and_play
  #   play_once
  #   allow(Kernel).to receive(:rand).and_return(10)
  # end

  scenario 'Player 1 loses' do
    sign_in_and_play
    18.times { play_once } 
    click_button "Attack"
    expect(page).to have_content 'You lose!'
  end
end

