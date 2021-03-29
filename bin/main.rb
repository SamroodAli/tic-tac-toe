#!/usr/bin/env ruby
require_relative '../lib/game_logic'
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

loop do
  game_board = Board.new
  3.times { puts }
  display_board(game_board.board)

end
