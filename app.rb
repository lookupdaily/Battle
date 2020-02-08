require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect('/play')
  end

  get '/play' do
     @player_1 = $player_1.name
     @player_2 = $player_2.name
    erb :play
  end

  post '/attacked' do
    erb :attacked
  end

  run! if app_file == $0
end
