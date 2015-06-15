require 'rubygems'
require 'bundler/setup'
require 'highline/import'
require 'erb'
require 'pry'
require 'matrix'
require 'text-table'
require 'active_support/inflector'
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }


def ask_questions(klass, width, height, matrix)
  klass = klass.to_s.camelcase.constantize
  say("Good choice!")
  say("First Position:")
  x1 = ask("x1  ", Integer) { |q| q.in = 1..width }
  y1 = ask("y1  ", Integer) { |q| q.in = 1..height }
  say("Second Position:")
  x2 = ask("x2  ", Integer) { |q| q.in = 1..width }
  y2 = ask("y2  ", Integer) { |q| q.in = 1..height }
  puts klass.call(x1,y1,x2,y2,matrix).draw.to_table
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
          ask_questions(:line, width, height, matrix)
       end

        menu.choice("Draw a rectangle") do
          ask_questions(:rectangle, width, height, matrix)
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
