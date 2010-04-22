class NumericMaze
  attr_reader :from, :to
  def initialize from, to
    @from = from
    @to = to
  end

  def solve
    [from]
  end
end