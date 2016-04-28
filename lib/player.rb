class Player
  DEFAULT_HIT_POINTS = 100

  attr_reader :name, :hp, :loser

  def initialize(name, hp = DEFAULT_HIT_POINTS)
    @name = name
    @hp = hp
    @loser = false
  end

  def receive_damage
    @hp -= 10
  end

end

