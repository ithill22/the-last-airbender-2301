require 'rails_helper'

RSpec.describe 'Welcome Index Page' do
  before :each do
    visit '/'
  end
  describe 'As a visitor, when I visit the welcome index page' do
    it 'I see a form to search for members with a select field for each nation' do
      expect(page).to have_field(:nation)
      expect(page).to have_button('Search For Members')
    end

    it 'When I select Fire Nation and click search, I am redirected to /search' do
      select 'Fire Nation', from: :nation
      click_button 'Search For Members'
      expect(current_path).to eq('/search')
    end
  end
end