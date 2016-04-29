require 'sinatra/base'
require 'shotgun'
require 'tilt/erb'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
	enable :sessions

	get '/' do
	  erb :index
	end

	post '/names' do
	  player_1 = Player.new(params[:player_1_name])
	  player_2 = Player.new(params[:player_2_name])
	  Game.new_game(player_1, player_2)
	  redirect '/play'
	end

	get '/play' do
	  @game = Game.current_game
	  erb :play
	end

	post '/attack' do
	  Game.current_game.attack(Game.current_game.opponent_of(Game.current_game.current_turn))
	  if Game.current_game.game_over?
	  	redirect '/game_over'
	  else
	  	redirect '/attack'
		end
	end

	get '/attack' do
		@game = Game.current_game
		erb :attack
	end

	post '/switch-turns' do
		Game.current_game.switch_turn
		redirect('/play')
	end

	get '/game_over' do
		@game = Game.current_game
		erb :game_over
	end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

