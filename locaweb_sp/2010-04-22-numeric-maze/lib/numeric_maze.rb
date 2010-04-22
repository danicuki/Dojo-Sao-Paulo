class NumericMaze
  def self.solve(from, to)
    return [from] if from == to
    [from, to]
  end
end