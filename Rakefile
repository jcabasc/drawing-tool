require 'rubygems'
require 'bundler/setup'
require 'colorize'
require 'highline/import'
require 'erb'
require 'pry'
require 'matrix'
require 'text-table'

class Matrix
  def []=(row, column, value)
    @rows[row][column] = value
  end
end

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

class Area
  attr :color, :matrix

  def initialize(x,y,color,matrix)
    @x, @y, @color, @matrix = x-1, y-1, color, matrix
  end

  def fill(x = @x,y = @y, oldcolor = nil)
    if oldcolor == nil
      oldcolor = matrix[y, x]
    end
    return matrix if matrix[y, x] != oldcolor

    matrix[y, x] = color

    if x > 0 # left
      fill(x - 1, y, oldcolor)
    end

    if y > 0 # up
      fill(x, y - 1, oldcolor)
    end

    if x <= matrix.column_count - 1 # right
      fill(x + 1, y, oldcolor)
    end

    if y <= matrix.row_count - 1 # down
      fill(x, y + 1, oldcolor)
    end
  end
end


namespace :drawingtool do
  task :start do
    puts "Create your canvas"
    width = ask("Width?  ", Integer) { |q| q.in = 1..30 }
    height = ask("Height?  ", Integer) { |q| q.in = 1..30 }

    say("Here is your canvas!")

    canvas = Canvas.new(width, height)
    matrix = canvas.matrix
    puts canvas.to_table

    quit = false

    until quit
      choose do |menu|
        menu.prompt = "Now, what do you want to do?"
        menu.choice("Draw a line") do
          say("Good choice!")
          say("First Position:")
          x1 = ask("x1  ", Integer) { |q| q.in = 1..width }
          y1 = ask("y1  ", Integer) { |q| q.in = 1..height }
          say("Second Position:")
          x2 = ask("x2  ", Integer) { |q| q.in = 1..width }
          y2 = ask("y2  ", Integer) { |q| q.in = 1..height }

          puts Line.new(x1,y1,x2,y2,matrix).draw.to_table
       end

        menu.choice("Draw a rectangle") do
          say("Good choice!")
          say("First Position:")
          x1 = ask("x1  ", Integer) { |q| q.in = 1..width }
          y1 = ask("y1  ", Integer) { |q| q.in = 1..height }
          say("Second Position:")
          x2 = ask("x2  ", Integer) { |q| q.in = 1..width }
          y2 = ask("y2  ", Integer) { |q| q.in = 1..height }

          puts Rectangle.new(x1,y1,x2,y2,matrix).draw.to_table

        end

        menu.choice("Fill an area") do
          say("Good choice!")
          say("Your coordinate:")
          x = ask("x  ", Integer) { |q| q.in = 1..width }
          y = ask("y  ", Integer) { |q| q.in = 1..height }
          color = ask("Your color (o,s):") { |q| q.validate = /[o,s]/ }

          puts Area.new(x, y, color, matrix).fill.to_table
        end
      end

      answer = ask("Keep drawing? (y/n)"){ |q| q.validate = /[y,n]/ }
      quit = answer != "y"
    end
  end
end
