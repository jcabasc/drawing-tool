require 'matrix'
class Canvas
  def initialize(width, height)
    @width, @height = width, height
  end

  def matrix
    Matrix.build(@height, @width) {|row, col| "" }
  end

  def to_table
    Text::Table.new(:rows => matrix)
  end
end

class Matrix
  def []=(row, column, value)
    @rows[row][column] = value
  end
end