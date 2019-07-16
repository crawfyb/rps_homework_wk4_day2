require('sinatra')
require('sinatra/reloader') if development?

class Game
require_relative('./models/rps.rb')
also_reload('./models/*')

gets '/check_win/:hand1/:hand2' do
   hand1 = params[:hand1]
   hand2 = params[:hand2]
   @win = RPSGame.check_win(hand1, hand2)
   erb(:result)
end
end
