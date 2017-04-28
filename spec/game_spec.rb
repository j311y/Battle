require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe '#initialize' do
    it 'initializes with 2 players' do
      expect game(player_1, player_2)
    end
  end

  describe '#attack' do
    it 'damages other player' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end



end
