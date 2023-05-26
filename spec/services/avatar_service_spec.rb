require 'rails_helper'

RSpec.describe AvatarService, :vcr do
  describe 'instance methods' do
    describe '#get_characters' do
      it 'returns characters from a given nation' do
        search = AvatarService.new.get_characters('Fire+Nation')
        expect(search).to be_a(Array)

        character = search.first
        expect(character).to have_key(:_id)
        expect(character[:_id]).to be_a(String)
        expect(character).to have_key(:allies)
        expect(character[:allies]).to be_a(Array)
        expect(character).to have_key(:enemies)
        expect(character[:enemies]).to be_a(Array)
        expect(character).to have_key(:name)
        expect(character[:name]).to be_a(String)
      end
    end
  end

end