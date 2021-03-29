#!/usr/bin/env ruby
require_relative '../lib/players'
require_relative '../lib/board'

puts 'Welcome to Tic Tac Toe'

def display_board(board)
  puts '         +---+---+---+'
  puts "         | #{board[0]} | #{board[1]} | #{board[2]} |"
  puts '         +---+---+---+'
  puts "         | #{board[3]} | #{board[4]} | #{board[5]} |"
  puts '         +---+---+---+'
  puts "         | #{board[6]} | #{board[7]} | #{board[8]} |"
  puts '         +---+---+---+'
end

def display_title
  puts '
   __                 __                     __
  |  |_  __   ___    |  |_   __  __  ___    |  |_   ___    ___
  |   _||  |/  __\   |   _|/  _ ` |/  ___\  |   _|/  _  \/ ( )_\
  |  |_ |  |  (___   |  |_   (_|  |  (___   |  |_   (_)  | |____
   \___||__|\____/    \___|\____,_|\_____/   \___|\_____/\_____/
  '
end

def display_instruction
  puts ''
  puts 'We play TicTacToe on a 3x3 board.'
  puts 'Players take turns placing their Token, O or X,'
  puts 'on an open square in the grid.'
  puts
  puts 'The first player taking 3 consecutive positions in line,'
  puts 'horizontally, verticaly or diagonally will be the winner.'
  puts 'If all 9 squares are filled and neither player can position '
  puts '3 tokens in line, the game will be tie.'
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

    print 'No anonymous player. Please enter the correct name: '
    name = gets.chomp
  end
  name
end

def display_players(player1, player2)
  puts "Welcome #{player1.name} your symbol is #{player1.symbol} "
  puts "Welcome #{player2.name} your symbol is #{player2.symbol} "
end

def validate_position(position, board)
  loop do
    break if (1..9).include?(position) && !board[position - 1].is_a?(String)

    print 'Please enter valid number from 1 to 9: ' unless (1..9).include?(position)
    print "It's already taken. Please choose another position: " if board[position - 1].is_a?(String)
    position = gets.chomp.to_i
  end
  position
end

loop do
  display_title
  display_instruction
  game_board = Board.new
  abort if player_answer == 'q'
  name1, name2 = players_name

  game_board = Board.new
  player1 = Player.new(name1, 'X')
  player2 = Player.new(name2, 'O')
  display_players(player1, player2)
  3.times { puts }

  display_board(game_board.board)
  current_player = player1

  loop do
    print "It is your turn #{current_player.name}, set your Symbol (#{current_player.symbol}) on board "

    position = gets.chomp.to_i
    position = validate_position(position, game_board.board)

    game_board.update_board(current_player, position, player1, player2)

    if game_board.win?
      display_board(game_board.board)
      puts "'Celebrate!' #{current_player.name} is the winner! \n"
      break
    elsif game_board.tie?
      display_board(game_board.board)
      puts "Tie game! — Game over \n"
      break
    end
    display_board(game_board.board)
    current_player = player1.change_player(current_player, player2)
  end
  break if player_answer == 'q'
end
