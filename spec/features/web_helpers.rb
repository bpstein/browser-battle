def sign_in_and_play 
    visit('/')
    fill_in :player_1_name, with: 'Grig'
    fill_in :player_2_name, with: 'Omar'
    click_button 'Submit'
end