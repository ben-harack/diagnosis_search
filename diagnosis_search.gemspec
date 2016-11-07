# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'diagnosis_search/version'

Gem::Specification.new do |spec|
  spec.name          = 'diagnosis_search'
  spec.version       = DiagnosisSearch::VERSION
  spec.authors       = ['Ben Harack']
  spec.email         = ['ben.harack@gmail.com']

  spec.summary       = 'Use suffix tree to search a list of strings.'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop'
  spec.add_dependency 'triez'
end
