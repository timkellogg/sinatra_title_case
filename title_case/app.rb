require('sinatra')
require('sinatra/reloader')
require('./lib/title_case')

get('/') do
  erb(:index)
end

get('/title') do
  @title =params.fetch('title').title_case()
  erb(:title)
end
