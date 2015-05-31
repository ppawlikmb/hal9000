module Hal9000
  class Robot
    class Orientation
      DIRECTIONS = [:west, :north, :east, :south]

      COORDS = {
          west:   [-1, 0],
          north:  [0, 1],
          east:   [1, 0],
          south:  [0, -1]
      }

      def initialize
        @index = nil
      end

      def set(orientation)
        orientation = orientation.downcase.to_sym if orientation.is_a? String
        if DIRECTIONS.include?(orientation)
          @index = DIRECTIONS.index(orientation)
          get_direction
        else
          false
        end
      end

      def left
        @index = (@index == 0 ? 3 : @index - 1)
        get_direction
      end

      def right
        @index = (@index == 3 ? 0 : @index + 1)
        get_direction
      end

      def get_direction
        DIRECTIONS[@index] if @index
      end
      alias :to_s :get_direction

      def get_coords
        COORDS[get_direction] if @index
      end
    end # Orientation
  end # Robot
end # Hal9000