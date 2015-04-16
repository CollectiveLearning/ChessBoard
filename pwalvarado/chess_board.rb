class ChessBoard
	attr_reader :rows, :cols

	def initialize(rows = 8, cols = 8)
		@rows = rows
		@cols = cols
	end

	def print_board
		(1 .. rows).inject([]) { |board, row| board << line_maker(row) }.join("\n")
	end

	def line_maker(row)
		(1 .. cols).inject([]) { |ary, col| ary << (col + row) % 2 }.join(" ")
	end

end
args = ARGV.map(&:to_i)
puts ChessBoard.new(*args).print_board
