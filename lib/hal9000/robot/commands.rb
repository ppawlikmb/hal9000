module Hal9000
  class Robot
    module Commands
      def place(x, y, f)
        while_in_bounds(x, y) do
          @position_x, @position_y = x.to_i, y.to_i
          @orientation.set(f)
          true
        end
      end

      def move
        while_placed do
          while_in_bounds(*simulate_move) do
            make_move
          end
        end
      end

      def left
        while_placed do
          @orientation.left
        end
      end

      def right
        while_placed do
          @orientation.right
        end
      end

      def report
        while_placed do
          p "#{position_x}, #{position_y}, #{orientation.to_s.upcase}"
        end
      end

      private

      def while_placed(&block)
        if assert_is_placed
          yield
        else
          invalid_move
        end
      end

      def while_in_bounds(x, y, &block)
        if board.assert_in_bounds(x, y)
          yield
        else
          invalid_move
        end
      end

      def simulate_move
        move_x, move_y = @orientation.get_coords
        [position_x + move_x, position_y+ move_y]
      end

      def make_move
        move_x, move_y = @orientation.get_coords
        @position_x += move_x
        @position_y += move_y
        true
      end

      def assert_is_placed
        self.placed?
      end

      def invalid_move
        puts "I'm sorry Dave, I'm afraid I can't do that."
        false
      end
    end # Commands
  end # Robot
end # Hal9000