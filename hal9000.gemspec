# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hal9000/version'

Gem::Specification.new do |spec|
  spec.name          = "hal9000"
  spec.version       = Hal9000::VERSION
  spec.authors       = ["Paweł Pawlik"]
  spec.email         = ["pawel.pawlik@millwardbrown.com"]

  spec.summary       = %q{A simulation of a robot moving on a board}
  spec.homepage      = "https://github.com/ppawlikmb/hal9000"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
