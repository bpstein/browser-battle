# require '../spec_helper'

describe "Player management", :type => :feature do 
  
  context "Add player names" do 
    it "opens homepage" do 
      visit '/'
      fill_in 'Player 1 name', :with => 'name1'
      fill_in 'Player 2 name', :with => 'name2'
      click_button 'Submit'
      expect(page).to have_content 'name1 & name2 enter the battle!'
    end 
  end

end