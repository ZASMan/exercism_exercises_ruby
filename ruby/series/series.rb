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
    @numbers_array.each_cons(substring_length).to_a.map { |array| array.join }
  end
end
