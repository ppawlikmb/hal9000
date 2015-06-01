module Hal9000
  class Robot
    module Parser
      module File
        def parse_file(file)
          ::File.open(file).each do |line|
            parse_line(line)
          end
        end
      end # File
    end # Parser
  end # Robot
end # Hal9000