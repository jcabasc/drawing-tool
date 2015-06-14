require 'spec_helper'

describe Rectangle do
  describe '.draw' do
    let(:canvas) { Canvas.new(10,4)}
    let(:matrix) { canvas.matrix }

    context "when a rectangle with coordinates p1(6,1) and p2(10,3)" do
      subject { described_class.call(6,1,10,3, matrix).draw.to_a }

      it  "draw a rectangle with coordenates (6,1) - (10,3)" do
        expect(subject).to eql response_rectangle
        puts subject.to_table
      end
    end

    context "when a rectangle with coordinates p1(10,3) and p2(6,1)" do
      subject { described_class.call(10,3,6,1, matrix).draw.to_a }

      it  "draw a rectangle with coordenates (6,1) - (10,3)" do
        expect(subject).to eql response_rectangle
        puts subject.to_table
      end
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