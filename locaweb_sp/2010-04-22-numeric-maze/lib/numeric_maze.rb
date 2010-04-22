class NumericMaze
  def self.solve(from, to)

    return [to] if from == to
    
    result_multiply = [from]
    result_add = [from]

    while result_add.size < 100 do
      result_multiply = multiply(result_multiply)
      return result_multiply if result_multiply.last == to
      
      result_add = add(result_add)
      return result_add if result_add.last == to
    end
  end
  
  def self.multiply(result)
    result << result.last * 2
    result
  end
  
  def self.add(result)
    result << result.last + 2
    result
  end
  
end
