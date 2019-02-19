class Raindrops
  def self.convert(number)
  	output = ""
  	if /^\d+(\.\d)?$/.match((number.to_f / 3).to_s) && (number.to_f / 3) == (number / 3)
  	  output = output + "Pling"
  	end
    if /^\d+(\.\d)?$/.match((number.to_f / 5).to_s) && (number.to_f / 5) == (number / 5)
      output = output + "Plang"
    end
    if /^\d+(\.\d)?$/.match((number.to_f / 7).to_s) && (number.to_f / 7) == (number / 7)
      output = output + "Plong"
    end
    output = number.to_s if output == ""
    output
  end
end 