class Line
  attr :x1, :x2, :y1, :y2, :matrix
  def initialize(x1,y1,x2,y2,matrix)
    @x1, @y1, @x2, @y2, @matrix = x1-1, y1-1, x2-1, y2-1, matrix
  end

  def draw
    matrix.each_with_index do |val, row, col|
      matrix[row,col] = 'x' if (y1..y2).include?(row) && (x1..x2).include?(col)
    end
  end
end