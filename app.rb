require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/weekday')

get('/') do
  erb(:form)
end

get('/weekday') do
  @date = params.fetch('date')
  @result = @date.weekday()
  erb(:weekday)
end
