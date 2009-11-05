class Waterflow
	def initialize litros, vazao
		@litros = litros
		@vazao = vazao
	end
	
	def flow
		return [t0] if @litros == 0
		return [t0, t0.reverse] if @vazao.length == 1 and @vazao[0] >= @litros
		
		return [t0, meio, t0.reverse] 
	end
	
	def self.next caixas, vazao
		result = []
		caixas.each_with_index do |el, index|
			result << el - vazao[index] unless vazao[index].nil?
		end
		result << vazao.last
		result
	end
	
	private
	def t0
		t0 = [@litros]
		@vazao.each { t0 << 0 }
		t0
	end
	
	def meio
		meio = []
		meio << @litros - @vazao[0]
		meio << @vazao[0]
		meio << 0 if @vazao.length == 2
		meio
	end
	
	
	
end