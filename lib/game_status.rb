WIN_COMBINATIONS = [[0, 1, 2],[3, 4, 5],[6, 7, 8],[0, 3, 6],[1, 4, 7],[2, 5, 8],[0, 4, 8],[2, 4, 6]]

# helper method to find wins based on character
def won_var?(board, char = "X")
  WIN_COMBINATIONS.find do |win_combo|
    win_combo.all? {|win_index| board[win_index] == char}
  end # WIN_COMBINATIONS.find do block
end # def won?

#defining the method #won? that accepts the argument of a boardß
def won?(board)
  if won_var?(board, "X") == nil
    won_var?(board, "O")
  else
    won_var?(board, "X")
  end
end # def won?

def full?(board)
  board.all? {|index| index == "X" || index == "O"}
end

def over?(board)
  if draw(board) == true || won == true
    true
  else
    false
  end
end

def winner(board)

end

def draw(board)
  if over?(board == true) && won?(board) == false
    return true
  else
    false
  end
end
