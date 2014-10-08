require 'rails_helper'

context 'restaurants' do

  describe 'no restaurants have been added' do

      it 'should display a prompt to add a restaurant' do
      visit '/restaurants'
      expect(page).to have_content 'No restaurants'
      expect(page).to have_link 'Add a restaurant'
      end
  end

  describe 'restaurants have been added' do
    before (:each) do
     Restaurant.create(name: 'KFC')
    end

    it 'should display restaurants' do
      visit '/restaurants'
      expect(page).to have_content('KFC')
      expect(page).not_to have_content('No restaurants added yet')
    end
  end

  describe 'creating restaurants' do
    context 'a valid restaurant' do

    it 'prompts the user to fill out a form, then displays the new restaurant' do
      visit '/restaurants'
      click_link 'Add a restaurant'
      fill_in 'Name', with: 'KFC'
      click_button 'Create Restaurant'
      expect(page).to have_content 'KFC'
      expect(current_path).to eq '/restaurants'
    end
  end

    context 'an invalid restaurant' do

    it 'does not let you submit without a name that is too short' do
      visit '/restaurants'
      click_link 'Add a restaurant'
      fill_in 'Name', with: 'KF'
      click_button 'Create Restaurant'
      expect(page).not_to have_css 'h2', text: 'KF'
      expect(page).to have_content 'error'
    end
    end
  end

  describe 'editing restaurants' do
    before (:each) do
      Restaurant.create(name: 'McDonalds')
    end

    it 'prompts the user to edit the restaurant name' do
      visit '/restaurants'
      click_link 'Edit McDonalds'
      fill_in 'Name', with: 'McDonalds'
      click_button 'Update Restaurant'
      expect(page).to have_content 'McDonalds'
      expect(current_path).to eq '/restaurants'
    end
  end

  describe 'editing restaurants' do
    before (:each) do
      Restaurant.create(name: 'McDonalds')
    end

    it 'removes the restaurants when a user clicks the delete link' do
      visit '/restaurants'
      click_link 'Delete McDonalds'
      expect(page).not_to have_content 'McDonalds'
      expect(page).to have_content 'Restaurant deleted successfully'
      expect(current_path).to eq '/restaurants'
    end
  end
end

