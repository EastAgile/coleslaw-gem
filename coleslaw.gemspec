# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'coleslaw/gem/version'

Gem::Specification.new do |spec|
  spec.name          = "coleslaw"
  spec.version       = Coleslaw::Gem::VERSION
  spec.authors       = ["Phuong Nguyen"]
  spec.email         = ["phuong.nguyen@eastagile.com"]
  spec.description   = %q{A gem that allow you to upload your test results to http://coleslawapp.com}
  spec.summary       = %q{A gem that allow you to upload your test results to http://coleslawapp.com}
  spec.homepage      = "http://github.com/EastAgile/coleslaw-gem"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = ["coleslaw"]
  spec.test_files    = []
  spec.require_paths = ["lib"]

  spec.bindir = "bin"
  spec.executables = (Dir["bin/*"]).collect { |f| File.basename(f) }

  spec.add_dependency "quickl"
  spec.add_dependency "rest-client"
  spec.add_dependency "json"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "byebug"
end
