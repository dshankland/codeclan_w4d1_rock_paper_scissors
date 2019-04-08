# does the route handling
require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/game')

get '/' do
  erb (:home)
end

get '/:hand1/:hand2' do
  game = Game.new(params['hand1'], params['hand2'])
  @game_result = game.rock_paper_scissors()
  erb (:result)
end
