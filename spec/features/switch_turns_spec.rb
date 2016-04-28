feature 'Switch turns' do
  scenario 'seeing the current turn' do
    sign_in_and_play
    expect(page).to have_content "Grig's turn"
  end

  scenario 'after player 1 attacks' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content "Grig's turn"
    expect(page).to have_content "Omar's turn"
  end
end

