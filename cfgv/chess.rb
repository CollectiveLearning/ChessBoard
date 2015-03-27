class Chess
  attr_accessor :rows, :cols

  def initialize(rows=8,cols=8)
    self.rows = rows
    self.cols = cols
  end

  def draw
    for row in 1..self.rows do
      for col in 1..self.cols do
        print "#{(row+col)%2} "
      end
      puts
    end
  end
end
