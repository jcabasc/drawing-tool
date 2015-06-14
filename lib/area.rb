class Area
  attr :color, :matrix

  def initialize(x,y,color,matrix)
    @x, @y, @color, @matrix = x-1, y-1, color, matrix
  end

  def fill(x = @x,y = @y, oldcolor = nil)
    if oldcolor == nil
      oldcolor = matrix[y, x]
    end
    return matrix if matrix[y, x] != oldcolor

    matrix[y, x] = color

    if x > 0 # left
      fill(x - 1, y, oldcolor)
    end

    if y > 0 # up
      fill(x, y - 1, oldcolor)
    end

    if x <= matrix.column_count - 1 # right
      fill(x + 1, y, oldcolor)
    end

    if y <= matrix.row_count - 1 # down
      fill(x, y + 1, oldcolor)
    end
  end
end