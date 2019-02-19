class Grains
  def self.board
    grain_count = 1
    board = {}
    (1..64).to_a.each_with_index do |square_number, index|
      grain_count = grain_count * 2 if index != 0
      board[square_number] = grain_count
    end
    board
  end

  def self.square(square_number)
  	raise ArgumentError unless (1..64).to_a.include?(square_number)
    board[square_number]
  end

  def self.total
    board.values.sum
  end
end

