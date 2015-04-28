require('sinatra')
require('sinatra/reloader')
also_reload('.lib/**/*.rb')
require('./lib/Tamagotchi')

get('/') do
  erb(:index)
end
