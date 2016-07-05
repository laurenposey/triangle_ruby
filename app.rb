require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/triangle')


get('/') do
  erb(:index)
end

get('/triangle') do
  side_one = params.fetch('side_one')
  side_two = params.fetch('side_two')
  side_three = params.fetch('side_three')
  @triangle = Triangle.new(side_one, side_two, side_three)
  erb(:triangle)
end
