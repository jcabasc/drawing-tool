require 'spec_helper'

describe Area do
  describe '.fill' do
    let(:canvas) { Canvas.new(20,4)}
    let(:matrix) { canvas.matrix }

    before do
      Rectangle.new(16,1,20,3, matrix).draw
      Line.new(6,3,6,4, matrix).draw
      Line.new(1,2,6,2, matrix).draw
    end

    context "fill an area" do
      let(:color) { 'o' }
      subject { described_class.new(10,3,color, matrix).fill.to_a }
      it  "with coordinates (10,3) and color 'o'" do
        expect(subject).to eql response_1
        puts subject.to_table
      end
    end

    context "fill an area within a rectangle" do
      let(:color) { 's' }
      subject { described_class.new(19,2,color, matrix).fill.to_a }
      it  "with coordinates (19,2) and color 's'" do
        expect(subject).to eql response_2
        puts subject.to_table
      end
    end

    context "fill an area within two lines" do
      let(:color) { 's' }
      subject { described_class.new(3,3,color, matrix).fill.to_a }
      it  "with coordinates (3,3) and color 's'" do
        expect(subject).to eql response_3
        puts subject.to_table
      end
    end

  end
end

def response_1
  [
    ["o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "x", "x", "x", "x", "x"],
    ["x", "x", "x", "x", "x", "x", "o", "o", "o", "o", "o", "o", "o", "o", "o", "x", "", "", "", "x"],
    ["", "", "", "", "", "x", "o", "o", "o", "o", "o", "o", "o", "o", "o", "x", "x", "x", "x", "x"],
    ["", "", "", "", "", "x", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o"]
  ]
end

def response_2
  [
    ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "x", "x", "x", "x", "x"],
    ["x", "x", "x", "x", "x", "x", "", "", "", "", "", "", "", "", "", "x", "s","s", "s", "x"],
    ["", "", "", "", "", "x", "", "", "", "", "", "", "", "", "", "x", "x", "x", "x", "x"],
    ["", "", "", "", "", "x", "", "", "", "", "", "", "", "", "", "", "", "", "", ""]
  ]
end

def response_3
  [
    ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "x", "x", "x", "x", "x"],
    ["x", "x", "x", "x", "x", "x", "", "", "", "", "", "", "", "", "", "x", "", "", "", "x"],
    ["s", "s", "s", "s", "s", "x", "", "", "", "", "", "", "", "", "", "x", "x", "x", "x", "x"],
    ["s", "s", "s", "s", "s", "x", "", "", "", "", "", "", "", "", "", "", "", "", "", ""]
  ]
end