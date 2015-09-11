require_relative '../lib/position_taken.rb'

describe '#position_taken? in lib/position_taken.rb' do
  it 'accepts a board and the position to check as arguments' do
    board = []
    position = 0

    expect{position_taken?(board, position)}.to_not raise_error
  end

 #is this the desired behavior? if someone tries to fill out a position that doesn't exist, we should return false? not raise some kind of error or message?
  it 'returns false if the submitted position is not a valid location on the board, i.e. not included in the range of 1-9.' do
    board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    position = 100

    expect(position_taken?(board, position)).to be(false)
  end
  
  it 'returns false if the board has an empty string " " in the position' do
    board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    position = 0

    expect(position_taken?(board, position)).to be(false)
  end

   it 'returns false if the board has an empty string "" in the position' do
    board = ["", " ", " ", " ", " ", " ", " ", " ", " "]
    position = 0

    expect(position_taken?(board, position)).to be(false)
  end


  it 'returns false if the board has nil in the position' do
    board = [nil, " ", " ", " ", " ", " ", " ", " ", " "]
    position = 0

    expect(position_taken?(board, position)).to be(false)    

    position = 1
    expect(position_taken?(board, position)).to be(false)  
  end

  it 'returns true if the board has a value of "X" or "O" in the position' do
    board = ["X", " ", " ", " ", " ", " ", " ", " ", "O"]

    position = 0
    expect(position_taken?(board, position)).to be(true)      
    
    position = 8
    expect(position_taken?(board, position)).to be(true)
  end

  # replaced this one with 4th test to be more clear
  # it 'broken board' do
  #   board = ["X", "", " ", " ", " ", " ", " ", " ", "O"]

  #   position = 1
  #   expect(position_taken?(board, position)).to be(false)      
  # end  
end