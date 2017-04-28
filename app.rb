require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'

class Battle < Sinatra::Base
  enable :sessions
  
  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect('/play_p1')
  end

  get '/play_p1' do
    @game = $game
    erb :play_p1
  end

  get '/attack_p1' do
    @game = $game
    @game.attack(@game.player_2)
    erb :attack_p1
  end

  get '/play_p2' do
    @game = $game
    erb :play_p2
  end

  get '/attack_p2' do
    @game = $game
    @game.attack(@game.player_1)
    erb :attack_p2
  end

  run! if app_file == $0

end
