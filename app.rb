require('sinatra')
require('sinatra/reloader')
require('./lib/game')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  erb(:home)
end

# get('/play') do

# end



