# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'puppetdb/terminus/version'

Gem::Specification.new do |spec|
  spec.name          = "quixoten-puppetdb-terminus"
  spec.version       = PuppetDB::Terminus::VERSION
  spec.authors       = ["Devin Christensen"]
  spec.email         = ["quixoten@gmail.com"]
  spec.summary       = %q{PuppetDB Terminus}
  spec.description   = %q{PuppetDB Terminus}
  spec.homepage      = "https://github.com/quixoten/puppetdb-terminus"
  spec.license       = "Apache-2.0"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
