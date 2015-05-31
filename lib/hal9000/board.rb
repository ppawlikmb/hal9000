require 'hal9000/board/validations'

module Hal9000
  class Board
    include Validations

    attr_reader :size_x, :size_y

    def initialize(size_x = 4, size_y = 4)
      @size_x = size_x
      @size_y = size_y
    end
  end # Board
end # Hal9000