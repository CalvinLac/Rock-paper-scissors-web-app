require 'sinatra'
require 'erb'

get '/player_move' do 
  erb :player_move
end

post '/player_move' do 

  player_move = params[:choice]
  computer_moves = ['rock','paper','scissor']
  random_computer_move = computer_moves.sample

  if player_move == 'rock' && random_computer_move == 'scissor'
    erb :win

  elsif player_move == 'scissor' && random_computer_move == 'paper'
    erb :win

  elsif player_move == 'paper' && random_computer_move == 'rock'
    erb :win

  elsif player_move == random_computer_move
    erb :tie

  else 
    erb :lose
    
  end

end