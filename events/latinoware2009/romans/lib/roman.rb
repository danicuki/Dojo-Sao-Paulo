class Roman
	
	
	def initialize roman_number
		@roman_number = roman_number
		@hash = {"I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000}
	end

	def arabico
		return @hash[@roman_number] if @roman_number.size == 1
		@hash[@roman_number[0..0]] + @hash[@roman_number[1..1]]
	end

end