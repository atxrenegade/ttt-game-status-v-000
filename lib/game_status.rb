WIN_COMBINATIONS = [[0, 1, 2],[3, 4, 5],[6, 7, 8],[0, 3, 6],[1, 4, 7],[2, 5, 8],[0, 4, 8],[2, 4, 6]]

def won?(board)
board[WIN_COMBINATIONS].each do |combo|
  count = 0
  board[combo].each do |index|
    if index == "X" || index == "O"
      if count = 2
      return combo
      else
        count += 1
      end
    else
      false
      end
    end
  end
end
