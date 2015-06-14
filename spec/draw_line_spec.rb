require 'spec_helper'

describe Line do
  describe '.draw' do
    let(:canvas) { Canvas.new(10,4)}
    let(:matrix) { canvas.matrix }

    context "when single line in the canvas" do
      subject { described_class.new(1,2,6,2, matrix).draw.to_a }
      it  "draw a line from (1,2) to (6,2)" do
        expect(subject).to eql response_1
        puts subject.to_table
      end
    end

    context "when multiple lines in the canvas" do
      subject { described_class.new(6,3,6,4, matrix).draw.to_a }
      before { described_class.new(1,2,6,2, matrix).draw }
      it  "draw another line from (6,3) to (6,4)" do
        expect(subject).to eql response_2
        puts subject.to_table
      end
    end

  end
end

def response_1
  [
    ["", "", "", "", "", "", "", "", "", ""],
    ["x", "x", "x", "x", "x", "x", "", "", "", ""],
    ["", "", "", "", "", "", "", "", "", ""],
    ["", "", "", "", "", "", "", "", "", ""]
  ]
end

def response_2
  [
    ["", "", "", "", "", "", "", "", "", ""],
    ["x", "x", "x", "x", "x", "x", "", "", "", ""],
    ["", "", "", "", "", "x", "", "", "", ""],
    ["", "", "", "", "", "x", "", "", "", ""]
  ]
end