require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    'Hello Battle!'
    erb(:index)
  end
  # 
  # # post '/names' do
  # @name1 = params[:name1]
  # @name2 = params[:name2]
  # erb(:index)
  # end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
