class Scrabble
  
  def initialize(word)
  	@word = word
  end

  SCORE_VALUES =  [
  	[1, 'A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'],
  	[2, 'D', 'G'],
  	[3, 'B', 'C', 'M', 'P'],
  	[4, 'F', 'H', 'V', 'W', 'Y'],
    [5, 'K'],
  	[8, 'J', 'X'],
    [10, 'Q', 'Z']
  ]

  def self.score(word = @word)
    self.new(word).score
  end

  def score(word = @word)
  	return 0 if word.nil?
  	score = 0
  	word_letters = word.upcase.chars
  	word_letters.each do |word_letter|
      SCORE_VALUES.each_with_index do |letters, index|
      	if letters.include?(word_letter)
          score = score + letters[0]
        end
      end
  	end
    score
  end
end
