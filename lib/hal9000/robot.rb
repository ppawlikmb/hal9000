require 'forwardable'

require 'hal9000/robot/commands'
require 'hal9000/robot/orientation'
require 'hal9000/robot/parser'
require 'hal9000/robot/parser/file'

module Hal9000
  class Robot
    include Commands
    include Parser
    include Parser::File

    attr_reader :board, :position_x, :position_y, :orientation

    def initialize(board = Board.new(4,4))
      @board = board
      @position_x = nil
      @position_y = nil
      @orientation = Orientation.new
    end

    def placed?
      !(position_x.nil? || position_y.nil?)
    end
  end # Robot
end # Hal9000