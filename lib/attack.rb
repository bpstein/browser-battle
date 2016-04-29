class Attack
  def initialize(player)
    @player = player
  end

  def self.run(player)
    new(player).run
  end

  def run
    @player.receive_damage(random_damage_amount)
  end

  private

  def random_damage_amount
    Kernel.rand(1..10)
  end
end