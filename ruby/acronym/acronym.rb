class Acronym
  def self.abbreviate(word)
    word.scan(/\b\w/).join.upcase
  end
end
