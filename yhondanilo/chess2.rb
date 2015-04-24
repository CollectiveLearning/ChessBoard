class Chess

  attr_accessor :ultimo_color, :columnas, :filas

  def initialize(filas, columnas)
    @ultimo_color = 0
    @filas, @columnas = filas, columnas
    #imprimir
  end

  def intercalar

    @board = Array.new(@filas){ Array.new(@columnas) }
    for f in 1..self.filas
      for c in 1..self.columnas
        @ultimo_color = get_color
        @board[f][c] = @ultimo_color
       
      end
      
    end

  end

  def get_color
    case @ultimo_color 
    when 0 then 1     
    when 1 then 0
    end
  end

  #def imprimir
  #  for f in 1..self.filas
  #    for c in 1..self.columnas
  #      puts @board[f][c]
  #    end
  #  end
  #end
end

puts "Ingrese el numero de filas"
filas = gets.to_i
puts "Ingrese el numero de columnas"
columnas = gets.to_i
chess_board = Chess.new(filas, columnas)
chess_board.intercalar
