require 'spec_helper'

describe Rectangle do
  describe '.draw' do
    let(:canvas) { Canvas.new(10,4)}
    let(:matrix) { canvas.matrix }

    context "when a rectangle with coordinates p1(6,1) - p2(10,3)" do
      subject { described_class.call(6,1,10,3, matrix).draw.to_a }

      it  "draw a rectangle with coordenates (6,1) - (10,3)" do
        expect(subject).to eql response_rectangle
        puts subject.to_table
      end
    end

    context "when a rectangle with coordinates p1(10,3) - p2(6,1) and (x1 > x2, y1 > y2)" do
      subject { described_class.call(10,3,6,1, matrix).draw.to_a }

      it  "draw a rectangle with coordenates (6,1) - (10,3)" do
        expect(subject).to eql response_rectangle
        puts subject.to_table
      end
    end

    context "when a rectangle with coordinates p1(10,1) - p2(6,3) and (x1 > x2)" do
      subject { described_class.call(10,1,6,3, matrix).draw.to_a }

      it  "draw a rectangle with coordenates (6,1) - (10,3)" do
        expect(subject).to eql response_rectangle
        puts subject.to_table
      end
    end

    context "when a rectangle with coordinates p1(6,3) - p2(10,1) and (y1 > y2)" do
      subject { described_class.call(6,3,10,1, matrix).draw.to_a }

      it  "draw a rectangle with coordenates (6,1) - (10,3)" do
        expect(subject).to eql response_rectangle
        puts subject.to_table
      end
    end

  end
end