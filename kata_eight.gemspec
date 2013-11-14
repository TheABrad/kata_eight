# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kata_eight/version'

Gem::Specification.new do |spec|
  spec.name          = "kata_eight"
  spec.version       = KataEight::VERSION
  spec.authors       = ["Alex Bradley"]
  spec.email         = ["alex.robert.bradley@gmail.com"]
  spec.description   = %q{Code Kata Eight Conflicting Objectives}
  spec.summary       = %q{My version of Code Kata Eight}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = ['kata_eight'] 
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
