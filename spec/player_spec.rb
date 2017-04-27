require 'player'

describe Player do
  subject(:red) { Player.new('Red') }

  describe '#name' do
    it 'returns the name' do
      expect(red.name).to eq 'Red'
    end
  end
end
