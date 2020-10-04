def display_board(board)
 puts " #{board[0]} | #{board[1]} | #{board[2]} "
 puts "-----------"
 puts " #{board[3]} | #{board[4]} | #{board[5]} "
 puts "-----------"
 puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  if index.between?(0,8) && position_taken?(board, index) == false
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  else
    false
  end
end

def move(board, index, token="X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  user_input = input_to_index(input)
  if valid_move?(board, user_input)
    move(board, user_input, input)
  else
    turn(board)
  end

end
