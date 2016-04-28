class Game

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def player_1
    @player_1
  end

  def player_2
    @player_2
  end

  def attack(player)
    player.receive_damage
  end

end