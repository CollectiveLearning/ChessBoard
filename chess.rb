class Chess

	attr_accessor :fila, :columna

	def initialize(fila, columna)
		@fila, @columna=fila, columna
		intercalar

	end

	def intercalar
		#@board = Matrix.build(@fila, @columna){|fila, columna| 1}
		@board=Array.new(@fila){Array.new(@columna)}
			


		@board[0][0]=1
		for f in 0..@fila-1
		 for c in 0..@columna-1
		  if arr[f][c-1]==0
		   @board[f][c]=1
		  elsif @board[f][c-1]==1
		   @board[f][c]=0
		  end
		  if @board[f][c]==@board[f][@columna]
		   ultimo=@board[f][c]
		   if @board[f][c]==0
		    @board[f+1][c]=1
		   elsif @board[f][c]==1
		    @board[f+1][c]=0
   
	
		puts @board 		
	end
end

puts "Ingrese el numero de filas"
filas = gets.to_i

puts "Ingrese el numero de columnas"
columnas = gets.to_i

chess_board=Chess.new(filas, columnas)
#chess_board.intercalar
