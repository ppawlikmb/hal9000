module Hal9000
  class Robot
    module Parser
      VALID_COMMANDS = ['PLACE', 'MOVE', 'LEFT', 'RIGHT', 'REPORT']

      def parse_line(line)
        command, args = line.split
        if VALID_COMMANDS.include? command
          arguments = args.split(',').map(&:strip) if args

          send(command.downcase.to_sym, *arguments)
        end
      end
    end # Parser
  end # Robot
end # Hal9000