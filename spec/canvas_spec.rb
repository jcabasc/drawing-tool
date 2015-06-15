require 'spec_helper'

describe Canvas do
  describe '.matrix' do
    subject { described_class.new(10,4).matrix.to_a }
    it  "create a canvas of width 10 and height 4" do
      expect(subject).to eql response_canvas
      puts subject.to_table
    end

  end
end

describe Matrix do
  describe "[]=" do
    let(:matrix) { [[1, 2], [3, 50]] }
    subject { Matrix[ [1, 2], [3, 4] ] }
    before { subject[1,1] = 50 }
    it { expect(subject.to_a).to eql matrix }
  end
end