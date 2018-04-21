# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7],[2,5,8],[0,4,8],[2,4,6]]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    if board[combo[0]] == "X" && board[combo[1]] =="X" && board[combo[2]] == "X"
      return [combo[0], combo[1], combo[2]]
    elsif board[combo[0]] == "O" && board[combo[1]] =="O" && board[combo[2]] == "O"
      return [combo[0], combo[1], combo[2]]
    end
  end
  return false
end

def full?(board)
  index = 0
    8.times do 
      if !(position_taken?(board, index))
        return false
      end
    index += 1
    end
    return true
end

def draw? (board)
  if !won?(board) && full?(board)
    return true
  end
  return false
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  end
  return false
end

def winner(board)
  if won?(board)
  return board[won?(board)[0]]
else return nil
end
end

board = [" "," "," "," "," "," "," "," "," "]
winner(board)