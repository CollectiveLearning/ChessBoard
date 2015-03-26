class Chess_board

  def board(f,c)
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

## Derechos de autor de las siguientes 2 lineas (@rderoldan1)
args = ARGV.map(&:to_i)
print Chess_board.new().board(*args)
