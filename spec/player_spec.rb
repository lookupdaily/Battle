require 'player'

describe Player do
  subject(:jason) { described_class.new("Jason") }
  subject(:liz) { described_class.new("Liz") }

  it 'returns a name' do
    expect(jason.name).to eq "Jason"
  end

  it 'returns initial HP' do
    expect(subject.health).to eq 100
  end

  describe '#attack' do
    it 'damages the player' do
      expect { jason.attack(liz) }. to change { liz.health }.by -described_class::DEFAULT_ATTACK_POINTS
    end
  end
end