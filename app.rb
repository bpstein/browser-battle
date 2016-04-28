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
	  $game = Game.new(player_1, player_2)
	  redirect '/play'
	end

	get '/play' do
	  @game = $game
	  erb :play
	end

	get '/attack' do
	  @game = $game 
	  @game.attack(@game.player_2)
	  erb :attack
	end

  # start the server if ruby file executed directly
  run! if app_file == $0
end


 # Test-drive towards having Game.new accept two Player instances
 # Change messages being called on Player instances to ones being called on a Game instance instead
 # Replace the $player_1 and $player_2 global variables with references to a $game global variable 
	 #that is instantiated when a game is started.