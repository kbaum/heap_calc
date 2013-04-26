# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'heap_calc/version'

Gem::Specification.new do |spec|
  spec.name          = "heap_calc"
  spec.version       = HeapCalc::VERSION
  spec.authors       = ["Karl Baum"]
  spec.email         = ["karl.baum@gmail.com"]
  spec.description   = %q{Help tracing down memory usage}
  spec.summary       = %q{Help tracing down memory usage}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
