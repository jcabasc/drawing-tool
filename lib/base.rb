class Base
  attr :x1, :x2, :y1, :y2, :matrix
  def initialize(x1,y1,x2,y2,matrix)
    @x1, @y1, @x2, @y2, @matrix = x1-1, y1-1, x2-1, y2-1, matrix
  end
end