require 'pry'

class Hamming
  def self.compute(strand1, strand2)
  	raise ArgumentError if strand1.length != strand2.length
  	difference = 0
  	strand1.chars.each_with_index { |strand1_letter, index| difference = difference + 1 if strand1_letter != strand2.chars[index] }
  	difference
  end
end