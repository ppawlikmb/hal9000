require 'spec_helper'

describe Board do
  subject(:board) { Board.new }

  it 'should have proper default size' do
    expect(board.size_x).to eq(4)
    expect(board.size_y).to eq(4)
  end

  context "when initialized with non-default values" do
    subject(:board) { Board.new(5, 5) }

    it 'should have proper size' do
      expect(board.size_x).to eq(5)
      expect(board.size_y).to eq(5)
    end

    it "shouldn't allow to move outside the board" do
      expect(board.assert_in_bounds(-1, 0)).to eq(false)
      expect(board.assert_in_bounds(0, -1)).to eq(false)
      expect(board.assert_in_bounds(6, 0)).to eq(false)
      expect(board.assert_in_bounds(0, 6)).to eq(false)
    end

  end

end
