feature 'Display points' do
  scenario 'See player 2 hit points' do
  	sign_in_and_play 
    expect(page).to have_content 'Omar: 100 HP'
	end

  scenario 'See player 1 hit points' do
    sign_in_and_play 
    expect(page).to have_content 'Grig: 100 HP'
  end
end