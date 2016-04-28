require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  it 'allows one player to attack another' do
    expect(player_1).to receive(:receive_damage)
    game.attack(player_1)
  end

  it 'gets the first player' do
    expect(game.player_1).to eq player_1
  end

  it 'gets the second player' do
    expect(game.player_2).to eq player_2
  end

  describe '#current_turn' do
    it 'starts as player 1' do
      expect(game.current_turn).to eq player_1
    end
  end

  describe '#switch_turns' do
    it 'swtiches the turn' do
      game.switch_turn
      expect(game.current_turn).to eq player_2
    end
  end


end