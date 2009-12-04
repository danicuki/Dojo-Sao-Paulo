class Pile
	def initialize *boxes
		@boxes = boxes.map {|box| Box.new(box)}
	end
	
	def height 
		piles = []
		@boxes.each do |box|
			if piles.size == 0 or piles.last.height <= box.height
				piles << box
			else
				piles.last.put box
			end
		end
		piles.inject(0) do |soma, atual|
			soma += atual.height 
		end
	end
	
end

class Box
	attr_accessor :height
	attr_accessor :free_space
	attr_accessor :boxes
	
	def initialize(height)
		self.height = height
		self.free_space = height
		self.boxes = []
	end
	
	def put(box)
		if free_space >= box.height
			self.free_space -= box.height
			self.boxes << box
		#else
		# 	raise "There's no space"
		end
	end
end