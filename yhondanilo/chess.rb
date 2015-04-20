class Chess
  attr_accessor :filas, :columnas

  def initialize(filas, columnas)
    @filas = filas
    @columnas = columnas
    intercalar
  end

  def intercalar
    @board = Array.new(@filas){ Array.new(@columnas) }
    @board[1][1] = 1
    for f in 1..self.filas
      for c in 1..self.columnas
        if @board[f][c - 1] == 0
          @board[f][c] =  1
        elsif @board[f][c - 1] == 1
          @board[f][c] = 0
        end
        if c == @columna - 1
          ultimo = @board[f][c]
          if ultimo == 0
            @board[f + 1][c] = 1
          elsif ultimo == 1
            @board[f + 1][c] = 0
          end
        end
      end
    end
  end

  def imprimir
    for f in 1..self.filas
      for c in 1..self.columnas
        puts @board[f][c]
      end
    end
  end
end

puts "Ingrese el numero de filas"
filas = gets.to_i
puts "Ingrese el numero de columnas"
columnas = gets.to_i
chess_board = Chess.new(filas, columnas)
chess_board.imprimir
