require('sinatra')
require('sinatra/reloader')
require('./lib/game')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  erb(:home)
end

get('/play') do
  @game = Game.new()
  @mystery_word = @game.get_blanks
  erb(:play)
end

patch('/play') do
  letter = params[:letter]
  erb(:play)
end


