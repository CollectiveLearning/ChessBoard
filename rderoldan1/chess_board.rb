class ChessBoard
	attr_accessor :rows, :cols

	def initialize(rows = 8, cols = 8)
		self.rows = rows
		self.cols = cols
	end

	def draw
		str = ''
		rows_ary.each_with_index do |row, index| 
			str.concat(' ' + row.join(' | ') + "\n" ) 
			str.concat(("--" * cols * 2 ) + "\n" ) if index != rows_ary.count - 1
		end
		str
	end
	
	private

	def rows_ary
		(1..rows).map do |row|
			(1..cols).map do |col|
			  (col + row )% 2	
			end
		end	
	end	
end
args = ARGV.map(&:to_i)
puts ChessBoard.new(*args).draw
