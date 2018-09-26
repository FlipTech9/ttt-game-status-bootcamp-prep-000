# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #Top row 
  [3,4,5], #Middle row 
  [6,7,8], #Bottom row
  [0,3,6], #Left column
  [1,4,7], #Middle column
  [2,5,8], #Right column
  [6,4,2], #Diagonal one 
  [0,4,8] #Diagonal two
]

def won?(board)
  
  WIN_COMBINATIONS.each do |win_combination|
  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]
  
  position_1 = board[win_index_1]
  position_2 = board[win_index_2]
  postiion_3 = board[win_index_3]
  
  if
    position_1 == "X" && position_2 == "X" && position_3 == "X"
    return WIN_COMBINATIONS[0]
  else
    false 
  end
end