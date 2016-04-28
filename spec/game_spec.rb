require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  subject(:finished_game) { described_class.new(dead_player, player_2) }
  let(:player_1) { double :player, hp: 60 }
  let(:player_2) { double :player, hp: 60 }
  let(:dead_player) { double :player, hp: 0 }

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

  describe "#opponent_of" do
    it 'finds the opponent of a player' do
      expect(game.opponent_of(player_1)).to eq player_2
      expect(game.opponent_of(player_2)).to eq player_1
    end
  end

  describe '#game_over?' do
    it 'returns false if no-one is at 0HP' do
      expect(game.game_over?).to be false
    end

    it 'returns true if at least one player is at 0HP' do
      expect(finished_game.game_over?).to be true
    end
  end

  describe '#loser' do
    it 'returns a player on less than 0HP' do
      expect(finished_game.loser).to eq dead_player
    end
  end


end

