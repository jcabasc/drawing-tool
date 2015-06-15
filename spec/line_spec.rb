require 'spec_helper'

describe Line do
  describe '.draw' do
    let(:canvas) { Canvas.new(10,4)}
    let(:matrix) { canvas.matrix }
    context "when a horizontal line with coordinates p1(6,2) - p2(1,2) and (x1 > x2)" do
      subject { described_class.call(6,2,1,2, matrix).draw.to_a }
      it  "draw a line from (1,2) to (6,2)" do
        expect(subject).to eql response_line_1
        puts subject.to_table
      end
    end

    context "when a horizontal line with coordinates p1(1,2) - p2(6,2) " do
      subject { described_class.call(1,2,6,2, matrix).draw.to_a }
      it  "draw a line from (1,2) to (6,2)" do
        expect(subject).to eql response_line_1
        puts subject.to_table
      end
    end

    context "when a vertical line with coordinates p1(1,4) - p2(1,2) and (y1 > y2) " do
      subject { described_class.call(1,4,1,2, matrix).draw.to_a }
      it  "draw a line from (1,2) to (1,4)" do
        expect(subject).to eql response_line_2
        puts subject.to_table
      end
    end

    context "when a vertical line with coordinates p1(1,2) - p2(1,4) " do
      subject { described_class.call(1,2,1,4, matrix).draw.to_a }
      it  "draw a line from (1,2) to (1,4)" do
        expect(subject).to eql response_line_2
        puts subject.to_table
      end
    end

    context "when a diagonal line with coordinates p1(1,1) - p2(4,4) " do
      subject { described_class.call(1,1,4,4, matrix).draw.to_a }
      it  "draw a line from (1,1) to (4,4)" do
        expect(subject).to eql response_diagonal_line
        puts subject.to_table
      end
    end

    context "when a diagonal line with coordinates p1(4,4) - p2(1,1) " do
      subject { described_class.call(4,4,1,1, matrix).draw.to_a }
      it  "draw a line from (1,1) to (4,4)" do
        expect(subject).to eql response_diagonal_line
        puts subject.to_table
      end
    end

  end
end