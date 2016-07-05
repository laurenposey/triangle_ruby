require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/triangle')


get('/') do
  erb(:index)
end

get('/triangle') do
  side_one = params.fetch('side_one').to_i
  side_two = params.fetch('side_two').to_i
  side_three = params.fetch('side_three').to_i
  @triangle = Triangle.new(side_one, side_two, side_three)
  erb(:triangle)
end
