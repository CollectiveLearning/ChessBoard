class Chess_board

  def board(rows,cols)
    col = 0
    ary = []

    for cycle_columns in 1..cols
      ary_color = []
      if ary_color.size.eql? 0
        if ary.size.eql? 0
          ary_color.push(0)
        elsif ary[col-1].first.eql? 0
          ary_color.push(1)
        end
      end

      for cycle_rows in 2..rows
        if ary_color.last.eql? 0
          ary_color.push(1)
        else
          ary_color.push(0)
        end
      end
      ary[col] = ary_color
      col = col+1
    end
    ary
  end
end

## Derechos de autor de las siguientes 2 lineas (@rderoldan1)
args = ARGV.map(&:to_i)
print Chess_board.new().board(*args)