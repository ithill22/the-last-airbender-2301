require 'rails_helper'

RSpec.describe 'Search Index Page' do
  before :each do
    visit root_path
    select 'Fire Nation', from: :nation
    click_button 'Search For Members'
  end
  describe 'As a visitor, when I visit the search index page' do
    it 'I see the total number of people who live in the Fire Nation' do
      expect(page).to have_content('Total Number of Residents: 97')
      expect(page).to have_css('.character', count: 25)
      within(first('.character')) do
        expect(page).to have_css('.name')
        expect(page).to have_css('.photo')
        expect(page).to have_css('.allies')
        expect(page).to have_css('.enemies')
        expect(page).to have_css('.affiliation')
      end
    end
  end
end