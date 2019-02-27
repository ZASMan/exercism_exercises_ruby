class Phrase
  def initialize(word_string)
  	@words_separated = seperate_and_filter_words(word_string)
  end

  def seperate_and_filter_words(word_string)
     word_string.gsub!(/[^a-z0-9\s('')'']/i, ' ')
     word_string.gsub!(/\s+/, ' ')
     word_array = word_string.split(" ").map!(&:downcase)
     word_array.map! { |word| word.chomp("'").reverse.chomp("'").reverse }
  end

  def word_count
    @words_separated.each_with_object({}) do |word, word_hash|
      if word_hash.key?(word)
      	word_hash[word] = word_hash[word] + 1
      else
      	word_hash[word] = 1
      end
    end
  end
end
