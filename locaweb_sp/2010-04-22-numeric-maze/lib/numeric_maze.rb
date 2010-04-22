class NumericMaze
  def self.solve(from, to)

    return [from, to] if from == to / 2    
    result = [from]

    while result.last != to do
      result << result.last * 2
      break if result.size > 100
    end
    if result.size > 100
      result = [from]
    end
    while result.last != to do
      result << result.last + 2
      break if result.size > 100
    end
    result
  end
end
