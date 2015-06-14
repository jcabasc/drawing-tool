class Rectangle
  attr :x1, :x2, :y1, :y2, :matrix
  def initialize(x1,y1,x2,y2,matrix)
    @x1, @y1, @x2, @y2, @matrix = x1-1, y1-1, x2-1, y2-1, matrix
  end

  def draw
    matrix.each_with_index do |val, row, col|
      matrix[row,col] = 'x' if condition_for_x(row,col) || condition_for_y(row,col)
    end
  end

  def condition_for_x(row,col)
    (x1..x2).include?(col) && (row == y1 || row == y2)
  end

  def condition_for_y(row,col)
    (y1..y2).include?(row) && (col == x1 || col == x2)
  end
end