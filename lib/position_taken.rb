# code your #position_taken? method here!
def position_taken?(board, pos)
  entry = board[pos]
  is_empty = (entry == " ") || (entry == "") || (entry == nil)
  return !is_empty
end
