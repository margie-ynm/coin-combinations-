require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combo')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/coinchanger') do
  @coin_amount = params.fetch('coins').to_i.coin_combo()
  erb(:coinchanger)
end
