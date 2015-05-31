module Hal9000
  class Board
    module Validations
      def assert_in_bounds(x, y)
        assert_integer(x) && assert_integer(y) && x.to_i.between?(0, self.size_x) && y.to_i.between?(0, self.size_y)
      end

      private

      def assert_integer(value)
        !value.nil? && value.to_i.to_s == value.to_s
      end
    end # Validations
  end # Board
end # Hal9000