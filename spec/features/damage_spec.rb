feature 'Damages Player 2' do
	scenario 'attack Player 2' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content 'Grig attacked Omar'
  end

  scenario 'attack Player 1' do
    sign_in_and_play
    click_button "Attack"
    click_button "OK"
    click_button "Attack"
    expect(page).to have_content 'Omar attacked Grig'
  end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button "Attack"
    expect(page).not_to have_content 'Omar: 100 HP'
    expect(page).to have_content 'Omar: 90 HP'
  end

  scenario 'reduce Player 1 HP by 10' do
    sign_in_and_play
    click_button "Attack"
    click_button "OK"
    click_button "Attack" 
    click_button "OK"
    expect(page).not_to have_content 'Grig: 100 HP'
    expect(page).to have_content 'Grig: 90 HP'
  end

end

