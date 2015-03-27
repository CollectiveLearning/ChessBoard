class Chess
  attr_accessor :rows, :cols

  def initialize(rows=8,cols=8)
    self.rows = rows
    self.cols = cols
  end

  def draw
    for row in 1..self.rows do
      for col in 1..self.cols do
        print row%2 == 0 ? col%2 == 0 ? ' 0 ' : ' 1 ' : col%2 == 0 ? ' 1 ' : ' 0 '
      end
      puts
    end
  end
end
