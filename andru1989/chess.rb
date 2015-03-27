class Chess

  def initialize(lines, cols)
    @lines = lines
    @cols = cols
  end

  def print_board
    value = ''

    (1..@lines).each do |line|
      (1..@cols).each do |col|
        value += set_cell_value(line, col)
        value += "\n" if col == @cols
      end
    end

    value
  end

  def set_cell_value(line, col)
    line.odd? ? col.odd? ? '1' : '0' : col.odd? ? '0' : '1'
  end

end

print Chess.new(8, 8).print_board