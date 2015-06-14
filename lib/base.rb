class Base
  attr :x1, :x2, :y1, :y2, :matrix

  def self.call(x1,y1,x2,y2,matrix)
    params = self.to_h(x1,y1,x2,y2)
    new(params.merge(matrix: matrix))
  end

  def initialize(params)
    @x1, @y1, @x2, @y2, @matrix = params[:x1]-1, params[:y1]-1, params[:x2]-1, params[:y2]-1, params[:matrix]
  end

  def self.to_h(x1,y1,x2,y2)
    params = { x1: x1, x2: x2, y1: y1, y2: y2 }
    params.merge!(x1: x2, x2: x1, y1: y2, y2: y1) if x1 > x2 || y1 > y2
    params
  end

end