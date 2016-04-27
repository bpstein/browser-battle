# require '../spec_helper'

describe "Player management", :type => :feature do 
  
  feature "Add player names" do 
    scenario "submitting names" do 
      visit('/')
      fill_in :name_1, :with => 'name_1'
      fill_in :name_2, :with => 'name_2'
      click_button 'Submit'
      expect(page).to have_content 'name_1 takes the red corner! name_2 takes the blue corner!'
    end 
  end

  feature "See player HP" do 
    scenario "Player 1 can see Player 2's HP" do 
      visit('/')
      fill_in :name_1, :with => 'name_1'
      fill_in :name_2, :with => 'name_2'
      click_button 'Submit'
      expect(page).to have_content 'name_2 HP: 100'
    end
  end

end