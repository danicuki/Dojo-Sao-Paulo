class Array
	def sum
		sum = 0
		self.each do |item|
			sum += item
		end
		sum
	end
end

class SplitCloud
	def initialize servers
		@servers = servers
	end
	
	def split clouds
		memoria = clouds.sum / @servers
		
		result = []
		(1..@servers).each do |variable|
			server = []
			while server.sum != memoria do
				server << clouds.shift
			end
			result << server
		end
		result
	end
end