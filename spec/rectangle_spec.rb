require 'spec_helper'

describe Rectangle do
  describe '.draw' do
    let(:canvas) { Canvas.new(10,4)}
    let(:matrix) { canvas.matrix }

    subject { described_class.new(6,1,10,3, matrix).draw.to_a }

    it  "draw a rectangle with coordenates (6,1) - (10,3)" do
      expect(subject).to eql response_rectangle
      puts subject.to_table
    end
  end
end

def response_rectangle
  [
    ["", "", "", "", "", "x", "x", "x", "x", "x"],
    ["", "", "", "", "", "x", "", "", "", "x"],
    ["", "", "", "", "", "x", "x", "x", "x", "x"],
    ["", "", "", "", "", "", "", "", "", ""]
  ]
end