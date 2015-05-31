$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'hal9000'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

include Hal9000