class Loot
	def initialize numero_piratas, tesouro
		@tesouro = tesouro
		@numero_piratas = numero_piratas
	end
	
	def split
		return "Inválido" if @numero_piratas > @tesouro.size
		return "Inválido" if soma % @numero_piratas != 0
		return [@tesouro] if @numero_piratas == 1 
		@tesouro.map { |pedra| [pedra] }
	end
	
	def soma
		soma = 0
		@tesouro.each {|pedra| soma += pedra }
		soma
	end
end