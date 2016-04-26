# require '../spec_helper'

describe "Player management", :type => :feature do 
  
  feature "Add player names" do 
    scenario "submitting names" do 
      visit('/')
      fill_in :name1, :with => 'name1'
      fill_in :name2, :with => 'name2'
      click_button 'Submit'
      expect(page).to have_content 'name1 and name2 enter the battle!'
    end 
  end

end