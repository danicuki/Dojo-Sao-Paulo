class Roman
	
	def self.to_integer roman
		soma = 0
		hash = {"I" => 1, "V" => 5, "X" => 10, 
			"L" => 50, "C"  => 100, "D"  => 500, 
			"M"  => 1000}
			
		roman.split("").each do |algarismo|
			soma = soma + hash[algarismo]
		end		
		return soma
	end
end