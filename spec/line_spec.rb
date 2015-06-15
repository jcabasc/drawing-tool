require 'spec_helper'

describe Line do
  describe '.draw' do
    let(:canvas) { Canvas.new(10,4)}
    let(:matrix) { canvas.matrix }
    context "when a line with coordinates p1(6,2) and p2(1,2)" do
      subject { described_class.call(6,2,1,2, matrix).draw.to_a }
      it  "draw a line from (1,2) to (6,2)" do
        expect(subject).to eql response_line_1
        puts subject.to_table
      end
    end

    context "when a line with coordinates p1(1,2) and p2(6,2) " do
      subject { described_class.call(1,2,6,2, matrix).draw.to_a }
      it  "draw a line from (1,2) to (6,2)" do
        expect(subject).to eql response_line_1
        puts subject.to_table
      end
    end
  end
end