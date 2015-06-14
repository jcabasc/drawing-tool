require_relative 'base'
class Rectangle < Base

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