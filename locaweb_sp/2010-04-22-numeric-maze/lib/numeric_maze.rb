class NumericMaze
  def self.solve(from, to)

    result = [from]

    while result.last != to do
      result << result.last * 2
      break if result.size > 100
    end
    
    result = [from] if result.size > 100
  
    while result.last != to do
      result << result.last + 2
      break if result.size > 100
    end
    result
  end
end
