class Matrix
  attr_accessor :numbers

  def initialize(numbers)
    @numbers = numbers
  end

  def rows
  	rows = numbers.split(/\n/)
  	rows_by_elements = rows.map { |row| row.split(/(\D+)/) if row.length > 0 }
  	no_whitespace_arrays = []
  	rows_by_elements.each do |row|
  	  result_row = []
      row.each do |element|
        result_row << element.to_i unless element.strip.empty?
      end
      no_whitespace_arrays << result_row
  	end
  	no_whitespace_arrays
  end

  def columns
    columns = []
    rows.each do |row|
      row.each_with_index do |element, index|
      	columns[index].nil? ? columns << [element] : columns[index] << element
      end
    end
    columns
  end
end
