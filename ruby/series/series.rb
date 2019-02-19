class Series
  def initialize(numbers)
  	@numbers = numbers
  	@numbers_array = numbers.split("").map { |num_string| num_string.to_i }
  end

  def slices(substring_length)
  	substring_length = substring_length.to_int
    if substring_length > @numbers_array.length
      raise ArgumentError.new("Substring length cannot exceed number array length.")
    end
  	result = []
    starting_index = 0
    substring_length_doesnt_exceed_string = true
    while substring_length_doesnt_exceed_string == true
      substring_array = @numbers_array[starting_index, substring_length]
      substring = substring_array.join
      result << substring
      starting_index = starting_index + 1
      if starting_index > @numbers_array.length
        substring_length_doesnt_exceed_string = false
      end
    end
    # Remove result elements which are less than substring legnth
    result.reject! { |element| element.length < substring_length }
    result.compact.flatten.map! { |element| element.to_s }
  end
end
