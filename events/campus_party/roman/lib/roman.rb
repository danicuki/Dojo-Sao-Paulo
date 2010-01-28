class Roman
	def initialize roman
  	@roman = roman 	
		@roman_hash = {"I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000}
	end
	
	def int_value
		acumulator = 0
		@roman.split("").each do |letter|
			acumulator += @roman_hash[letter]
		end
		acumulator
	end
end