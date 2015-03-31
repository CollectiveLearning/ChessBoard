class ChessBoard
	attr_reader :rows, :cols

	def initialize(rows = 8, cols = 8)
		@rows = rows
		@cols = cols
	end

	def print_board
		output = ""
	  cols.times do |col|
	  	rows.times do |row|
			  output.concat (( col + row ) % 2).to_s
			end
			output.concat("\n")
		end
		output
	end
end
args = ARGV.map(&:to_i)
puts ChessBoard.new(*args).print_board
