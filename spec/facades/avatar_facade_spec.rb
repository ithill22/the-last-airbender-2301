require 'rails_helper'

RSpec.describe AvatarFacade, :vcr do
  describe 'instance methods' do
    describe '#get_characters' do
      it 'returns characters from a given nation' do
        characters = AvatarFacade.new.get_characters('Fire+Nation')
        expect(characters).to be_a(Array)

        character = characters.first
        expect(character).to be_a(Character)
        expect(character.name).to be_a(String)
        expect(character.photo).to be_a(String)
        expect(character.allies).to be_a(Array)
      end
    end
  end
end