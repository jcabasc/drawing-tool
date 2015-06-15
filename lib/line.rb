require_relative 'base'
class Line < Base

  def draw(x1 = @x1,y1 = @y1, x2 = @x2, y2 = @y2)
    matrix[y1,x1] = 'x'
    return matrix if x1 == x2 && y1 == y2

    if x2 == x1
      draw(x1,y1+1,x2,y2)
    elsif y2 == y1
      draw(x1+1,y1,x2,y2)
    elsif x2 > x1 && y2 > y1
      draw(x1+1,y1+1,x2,y2)
    end

  end
end