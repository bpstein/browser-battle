require 'player'

describe Player do
  subject(:grig) { Player.new('Grig') }
  subject(:bob) { Player.new('Bob') }

  describe '#name' do
    it 'returns the name' do
      expect(grig.name).to eq 'Grig'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points of Grig' do
      expect(grig.hp).to eq described_class::DEFAULT_HIT_POINTS
    end

    it 'returns the hit points of Bob' do
      expect(bob.hp).to eq described_class::DEFAULT_HIT_POINTS
    end

  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { grig.receive_damage }.to change { grig.hp }.by(-10)
    end
  end
 end