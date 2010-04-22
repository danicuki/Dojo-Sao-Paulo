class NumericMaze
  def self.solve(from, to)
    result = [from]
    while result.last != to do
      result << result.last + 2
    end
    result
  end
end