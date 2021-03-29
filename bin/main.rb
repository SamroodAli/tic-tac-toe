#!/usr/bin/env ruby
require_relative '../lib/players'
require_relative '../lib/board'

def display_board(board)
  puts '         +---+---+---+'
  puts "         | #{board[0]} | #{board[1]} | #{board[2]} |"
  puts '         +---+---+---+'
  puts "         | #{board[3]} | #{board[4]} | #{board[5]} |"
  puts '         +---+---+---+'
  puts "         | #{board[6]} | #{board[7]} | #{board[8]} |"
  puts '         +---+---+---+'
end

def player_answer
  puts ''
  puts ">> To continue, press any key, or 'q' to quit the game."
  gets.chomp.downcase
end

def players_name
  print 'First Player: Please Enter Your Name: '
  name1 = gets.chomp.capitalize
  name1 = validated_name(name1)
  print 'Second Player: Please Enter Your Name: '
  name2 = gets.chomp.capitalize
  name2 = validated_name(name2)
  [name1, name2]
end
def validated_name(name)
  loop do
    break unless name.strip == ''

    print 'No Anonimoys player. Please enter the correct name: '
    name = gets.chomp
  end
  name
end

def display_players(player1, player2)
  puts "Welcome #{player1.name} your symbol is #{player1.symbol} "
  puts "Welcome #{player2.name} your symbol is #{player2.symbol} "
end

loop do
  game_board = Board.new
  abort if player_answer == 'q'
  name1, name2 = players_name

  game_board = Board.new
  player1 = Player.new(name1, 'X')
  player2 = Player.new(name2, 'O')
  display_players(player1, player2)
  3.times { puts }

end
