class Split
	def divide clouds, servidores
		resultado = []
		
		x = clouds.size / servidores
		
		servidores.times do
			serv = []
			x.times { serv << clouds.pop }
			resultado << serv
		end
		
		resultado
	end
end