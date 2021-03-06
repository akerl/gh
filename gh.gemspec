# -*- encoding: utf-8 -*-
$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require "gh/version"

Gem::Specification.new do |s|
  s.name        = "gh-akerl"
  s.version     = GH::VERSION + '.1'
  s.authors     = ["Konstantin Haase"]
  s.email       = ["konstantin.mailinglists@googlemail.com"]
  s.homepage    = "https://github.com/travis-ci/gh"
  s.summary     = %q{layered github client}
  s.description = %q{multi-layer client for the github api v3}
  s.license     = "MIT"

  s.files         = `git ls-files -- lib LICENSE`.split("\n")

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'webmock'

  s.add_runtime_dependency 'faraday',     '~> 0.8'
  s.add_runtime_dependency 'backports'
  s.add_runtime_dependency 'multi_json',  '~> 1.0'
  s.add_runtime_dependency 'addressable', '~> 2.5'
  s.add_runtime_dependency 'net-http-persistent', '~> 2.9'
  s.add_runtime_dependency 'net-http-pipeline'
end
