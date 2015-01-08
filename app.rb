require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/weekday')

get('/') do
  erb(:form)
end

get('/weekday') do
  date = params.fetch('date')
  if date==""
    @output_string = "Please enter a valid date."
  else
    result = date.weekday()
    @output_string = date + ", " + result
  end

  erb(:weekday)
end
