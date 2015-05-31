require 'hal9000/version'
require 'hal9000/robot'
require 'hal9000/board'

module Hal9000
  def self.new
    puts 'Hello Dave.'
    Robot.new
  end
end # Hal9000
