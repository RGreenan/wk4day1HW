require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/rps_game')
also_reload('./models/*')

get '/result/:hand1/:hand2' do ## helped along ##
  rps_game = RPSGame.new
  return rps_game.check_win(params[:hand1], params[:hand2])
end



## NOT NEEDED HERE ?? ##
get '/home' do
  erb (:home)
end

get '/layout' do
  erb (:layout) # same as above
end

get '/result' do
  erb (:result)
end
