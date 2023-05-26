require 'rails_helper'

RSpec.describe AvatarFacade, :vcr do
  describe 'instance methods' do
    describe '#get_characters' do
      it 'returns characters from a given nation' do
        characters = AvatarFacade.new.get_members('Fire+Nation')
        expect(characters).to be_a(Array)
        expect(characters.count).to eq(20)

        character_data = characters.first
        expect(character_data).to have_key(:allies)
        expect(character_data[:allies]).to be_a(Array)
        expect(character_data).to have_key(:enemies)
        expect(character_data[:enemies]).to be_a(Array)
        expect(character_data).to have_key(:name)
        expect(character_data[:name]).to be_a(String)
      end
    end
  end
end