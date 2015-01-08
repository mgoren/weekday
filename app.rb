require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/weekday')

get('/') do
  erb(:form)
end

get('/weekday') do
  date = params.fetch('date')
  result = date.weekday()

  if result == "error"
    @output_string = "Invalid input. Please try again."
  else
    @output_string = date + ", " + result
  end

  erb(:weekday)
end
