class NumericMaze
	def solve source, target
		result = partial source, target, :double
		return result if result.last == target

    result = partial source, target, :soma2
		return result if result.last == target

    partial source, target, :divide
	end
	
	def partial source, target, method
		result = [source]
		while result.last != target && result.size < 10 do
			result << result.last.send(method)
		end
		result
	end	
end

class Fixnum
	def soma2
		self + 2
	end

	def double
		self * 2
	end

	def divide
		self / 2
	end
end