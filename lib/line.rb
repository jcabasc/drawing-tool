require 'base'
class Line < Base

  def draw
    matrix.each_with_index do |val, row, col|
      matrix[row,col] = 'x' if (y1..y2).include?(row) && (x1..x2).include?(col)
    end
  end
end