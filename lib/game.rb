class Game

attr_reader :player_1, :player_2, :current_turn, :attacked

  class << self

    def new_game(player_1, player_2)
      @current_game = Game.new(player_1, player_2)
    end

    def current_game
      @current_game
    end

  end

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turn
    @current_turn = opponent_of(current_turn)
  end

  def opponent_of(player)
    players_who_are_not(player).first
  end

  def game_over?
    losing_players.any?
  end

  def loser
    losing_players.first
  end

  private

  attr_reader :players

  def players_who_are_not(the_player)
    players.select { |player| player != the_player }
  end

  def losing_players
    players.select { |player| player.hp <= 0 }
  end


end