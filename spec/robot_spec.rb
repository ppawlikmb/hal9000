require 'spec_helper'

describe Robot do
  subject(:robot) { Robot.new }

  it "shouldn't be placed on initialization" do
    expect(robot.placed?).to eq(false)
  end

  it "shouldn't be allowed to be placed outside the board" do
    expect(robot.place(-1, 0, :north)).to eq(false)
  end

  it "should be allowed to be placed inside the board" do
    expect(robot.place(0, 0, :north)).to eq(true)
  end

  context 'after it is placed on board' do
    before(:each) do
      robot.place(2, 2, :north)
    end

    it 'should be placed' do
      expect(robot.placed?).to eq(true)
    end

    it 'should allow moving' do
      expect(robot.move).to eq(true)
    end

    it 'should allow to be placed again' do
      robot.place(0, 0, :east)
      expect(robot.report).to eq('0, 0, EAST')
    end
  end

  context 'in provided examples should return expected value' do
    it '(example 1)' do
      robot.place(0, 0, :north)
      robot.move
      expect(robot.report).to eq('0, 1, NORTH')
    end

    it '(example 2)' do
      robot.place(0, 0, :north)
      robot.left
      expect(robot.report).to eq('0, 0, WEST')
    end

    it '(example 3)' do
      robot.place(1, 2, :east)
      robot.move
      robot.move
      robot.left
      robot.move
      expect(robot.report).to eq('3, 3, NORTH')
    end
  end
end
