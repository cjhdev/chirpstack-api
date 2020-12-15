require File.expand_path("../lib/chirp_stack_api/version", __FILE__)
require 'date'

Gem::Specification.new do |s|

  s.name    = "chirp_stack_api"
  s.version = ChirpStackAPI::VERSION
  s.date = Date.today.to_s
  s.summary = "ChirpStack gRPC Interface"
  s.homepage = "https://github.com/brocaar/chirpstack-api"
  s.author  = "Cameron Harper"
  s.files = Dir.glob("lib/**/*.rb")
  s.license = 'MIT'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'minitest'
  s.add_development_dependency 'grpc-tools'

  s.add_runtime_dependency 'grpc'

  s.required_ruby_version = '>= 2.0'

end
