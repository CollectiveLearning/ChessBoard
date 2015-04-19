class Chess
  attr_accessor :fila, :columna

  def initialize(fila, columna)
    @fila, @columna=fila, columna
    intercalar
  end
  def intercalar
    @board=Array.new(@fila){Array.new(@columna)}
    @board[0][0]=1
    for f in 0..self.fila-1
      for c in 0..self.columna-1
        if @board[f][c-1]==0
          @board[f][c]=1
        elsif @board[f][c-1]==1
          @board[f][c]=0
        end
        #if @board[f][c]==@board[f][@columna-1]
        if c==@columna-1
          ultimo=@board[f][c]
          if ultimo==0
            @board[f+1][c]=1
          elsif ultimo==1
            @board[f+1][c]=0
          end
        end
      end
    end
  end
  def imprimir
    for f in 0..self.fila-1
      for c in 0..self.columna-1
    	  puts @board[f][c]
      end
    end
  end
end

puts "Ingrese el numero de filas"
filas = gets.to_i

puts "Ingrese el numero de columnas"
columnas = gets.to_i

chess_board=Chess.new(filas, columnas)
chess_board.imprimir

