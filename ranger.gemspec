# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ranger/version'

Gem::Specification.new do |spec|
  spec.name          = "ranger"
  spec.version       = Ranger::VERSION
  spec.authors       = ["Epigene"]
  spec.email         = ["augusts.bautra@gmail.com"]

  spec.summary       = %q{Gives Ruby strings a #to_range method}
  spec.homepage      = "https://github.com/Epigene/ranger"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'activesupport'

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
