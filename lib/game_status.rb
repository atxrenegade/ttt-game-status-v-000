WIN_COMBINATIONS = [[0, 1, 2],[3, 4, 5],[6, 7, 8],[0, 3, 6],[1, 4, 7],[2, 5, 8],[0, 4, 8],[2, 4, 6]]

def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]] && position_taken?(board,combo[0])
    end
  end
end  

def full?(board)
  board.all? {|index| index == "X" || index == "O"}
end

def over?(board)
  if draw == true || won == true
    true
  else
    false
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
