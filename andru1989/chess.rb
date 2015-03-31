class Chess

  # Public: Initialize global variables
  #
  # Parameters:
  #  => This method receives lines(integer) and columns(integer) to set the length of the board
  #  => Default: lines = 8, columns = 8
  def initialize(lines = 8, cols = 8)
    @lines = lines
    @cols = cols
  end

  # Public:
  #   => Validate the number of parameters passed by the user before print the board
  #   => If the number of parameters are less or equal to two it call the print board method
  #   => If the number of parameters are greater than two, return an error and finish the program
  #
  # Parameters:
  #  => This method receives and array of parameters passed by the user
  def self.run(params)
    print params.size <= 2 ? new(*params.map(&:to_i)).print_board : 'Only 2 parameters allowed'
  end

  # Public:
  # => Loop from 1 to the values passed by the user lines and columns to set in 'value' variable the content of the board
  # => For each loop call the 'set_cell_value' method with the current line and column
  #
  # Return:
  #  => Return a string with the content of the board
  def print_board
    value = ''

    (1..@lines).each do |line|
      (1..@cols).each do |col|
        value += set_cell_value(line, col).to_s
        value += "\n" if col == @cols
      end
    end

    value
  end

  private
  # Private:
  # => Validate if the current line is odd
  # => Then validate if the current col is odd to set '1' or '0' to the current cell of the board
  #
  # Parameters:
  #  => This method receives a line(integer) and a col(integer)
  #
  # Return:
  #  => Return the value of the current cell after validate if the current line and col is pair or odd
  def set_cell_value(line, col)
    (line+col) %2
  end

end

# Execute the Chess class to run the program
Chess.run(ARGV)