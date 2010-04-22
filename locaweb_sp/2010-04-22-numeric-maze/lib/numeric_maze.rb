class NumericMaze
  def self.solve(from, to)

    return [to] if from == to
    
    result_multiply = [from]
    result_add = [from]
    result_halve = [from]

    while result_add.size < 100 do
      multiply(result_multiply)
      return result_multiply if result_multiply.last == to
      
      add(result_add)
      return result_add if result_add.last == to

      halve(result_halve)
      return result_halve if result_halve.last == to
    end
  end
  
  def self.multiply(result)
    result << result.last * 2
  end
  
  def self.add(result)
    result << result.last + 2
  end

  def self.halve(result)
    result << result.last / 2
  end
  
end
