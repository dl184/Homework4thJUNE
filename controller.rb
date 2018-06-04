require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/roshambo')
also_reload('models/*')


get '/game/:player1/:player2' do
  roshambo = Roshambo.new(params[:player1], params[:player2])
  @game = roshambo.check_win(params[:player1], params[:player2])
  erb ( :outcome )
end

get '/home' do
  erb (:home)
end

get '/home' do
  erb (:outcome)
end

get '/rock' do
  erb (:rock)
end

get '/paper' do
  erb (:paper)
end

get '/siscors' do
  erb (:siscors)
end 
