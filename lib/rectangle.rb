require_relative 'base'
class Rectangle < Base

  def draw(x1 = @x1,y1 = @y1, x2 = @x2, y2 = @y2, superior = false)
    unless superior
      draw_upper_right(@x1,@y1,x2,y2)
    else
      draw_lower_left(@x1,@y1,x2,y2)
    end
  end

  def draw_upper_right(x1,y1, x2 = @x2, y2 = @y2)
    matrix[y1,x1] = 'x'
    if x1 < x2
      draw_upper_right(x1+1,y1)
    elsif y1 < y2
      draw_upper_right(x1,y1+1)
    elsif x1 == x2 && y1 == y2
      draw(x1,y1,x2,y2,true)
    end
  end

  def draw_lower_left(x1,y1, x2 = @x2, y2 = @y2)
    matrix[y1,x1] = 'x'
    if y1 < y2
      draw_lower_left(x1,y1+1)
    elsif x1 < x2
      draw_lower_left(x1+1,y1)
    elsif x1 == x2 && y1 == y2
       return matrix
    end
  end

end