class Area
  attr :color, :matrix

  def initialize(x,y,color,matrix)
    @x, @y, @color, @matrix = x-1, y-1, color, matrix
  end

  def fill(x = @x,y = @y, default = nil)
    default = matrix[y, x] if default == nil
    return matrix if matrix[y, x] != default

    matrix[y, x] = color

    fill(x - 1, y, default) if x > 0
    fill(x, y - 1, default) if y > 0
    fill(x + 1, y, default) if x <= matrix.column_count - 1
    fill(x, y + 1, default) if y <= matrix.row_count - 1
  end
end