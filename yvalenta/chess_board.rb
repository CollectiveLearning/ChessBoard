class Chess_board

  def board(f,c)
    #f = 7
    #c = 8
    col = 0
    perro = []

    for eo in 1..c
      ñ = []
      if ñ.size.eql? 0
        if perro.size.eql? 0
          ñ.push(0)
        elsif perro[col-1].first.eql? 0
          ñ.push(1)
        end
      end

      for oe in 2..f
        if ñ.last.eql? 0
          ñ.push(1)
        else
          ñ.push(0)
        end
      end
      perro[col] = ñ
      col = col+1
    end
    perro
  end
end

## Derechos de autor de las siguiente 3 lineas (@rderoldan1)
#obj = Chess_board.new()
#sara = obj.board(7,4)
#print sara
args = ARGV.map(&:to_i)
print Chess_board.new().board(*args)