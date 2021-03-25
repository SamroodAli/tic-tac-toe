#!/usr/bin/env ruby
require_relative '../lib/players.rb'
require_relative '../lib/game_logic.rb'

game = GameLogic.new

def display_board(board = game.board)
  puts '+---+---+---+'
  puts "| #{board[0]} | #{board[1]} | #{board[2]} |"
  puts '+---+---+---+'
  puts "| #{board[3]} | #{board[4]} | #{board[5]} |"
  puts '+---+---+---+'
  puts "| #{board[6]} | #{board[7]} | #{board[8]} |"
  puts '+---+---+---+'
end

# puts 'Lets play some Tic Tac Toe'
# puts
# puts '.::First Player::.Please Enter Your Name: '
# player1 = gets.chomp.capitalize
# puts "Welcome #{player1} your symbol is X "
# puts
# puts '.::Second Player::. Please Enter Your Name: '
# player2 = gets.chomp.capitalize
# puts "Welcome #{player2} your symbol is O "
# puts
# puts
# puts "#{player1} vs #{player2}"
# display_board(game.board)
# puts
# 4.times do
#   puts "It is your turn #{player1}, position your Symbol on board"
#   move = gets.chomp.to_i
#   board[move] = 'X'
#   display_board(board)
#   puts "It is your turn #{player2}, position your Symbol on board"
#   move = gets.chomp.to_i
#   board[move] = 'O'
#   display_board(board)
# end
#
# puts display_board(board)
#
# puts "This game between #{player1} & #{player2} it TIE"
# print 'Do you want to play again(y/n)? '
# again = gets.chomp
# print again
# print 'How about New game with new player (y/n)? '
# new = gets.chomp
# print new
