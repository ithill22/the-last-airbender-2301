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
    end
  end
end