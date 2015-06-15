require 'rubygems'
require 'bundler/setup'
require 'colorize'
require 'highline/import'
require 'erb'
require 'pry'
require 'matrix'
require 'text-table'
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }

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
          puts Line.call(x1,y1,x2,y2,matrix).draw.to_table
       end

        menu.choice("Draw a rectangle") do
          say("Good choice!")
          say("First Position:")
          x1 = ask("x1  ", Integer) { |q| q.in = 1..width }
          y1 = ask("y1  ", Integer) { |q| q.in = 1..height }
          say("Second Position:")
          x2 = ask("x2  ", Integer) { |q| q.in = 1..width }
          y2 = ask("y2  ", Integer) { |q| q.in = 1..height }
          puts Rectangle.call(x1,y1,x2,y2,matrix).draw.to_table
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
