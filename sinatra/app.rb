require('sinatra')
require('sinatra/contrib/all')

get '/rock' do
  return 'Rock wins!'
end

get '/paper' do
  return 'Paper wins!'
end

get '/siscors' do
  return 'Siscors wins!'
end 
