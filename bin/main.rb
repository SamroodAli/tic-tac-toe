#!/usr/bin/env ruby
board = %w[1 2 3 4 5 6 7 8 9]

def display_board(board)
  puts '+---+---+---+'
  puts "| #{board[0]} | #{board[1]} | #{board[2]} |"
  puts '+---+---+---+'
  puts "| #{board[3]} | #{board[4]} | #{board[5]} |"
  puts '+---+---+---+'
  puts "| #{board[6]} | #{board[7]} | #{board[8]} |"
  puts '+---+---+---+'
end

puts display_board(board)


puts "This game between #{player1} & #{player2} it TIE"
print 'Do you want to play again(y/n)? '
again = gets.chomp
print again
print 'How about New game with new player (y/n)? '
new = gets.chomp
print new
