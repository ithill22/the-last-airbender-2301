require 'rails_helper'

RSpec.describe Character, type: :poro do
  describe 'initialize' do
    it 'exists and has attributes' do
      character = Character.new({:_id=>"5cf5679a915ecad153ab68cc",
        :allies=>["Fire Nation"],
        :enemies=>["Aang"],
        :photoUrl=>"https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128",
        :name=>"Afiko",
        :affiliation=>"Fire Nation"})
      expect(character).to be_a(Character)
      expect(character.name).to eq("Afiko")
      expect(character.photo).to eq("https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128")
      expect(character.allies).to eq(["Fire Nation"])
      expect(character.enemies).to eq(["Aang"])
      expect(character.affiliation).to eq("Fire Nation")
    end
  end
end