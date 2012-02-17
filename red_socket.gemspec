# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "red_socket/version"

Gem::Specification.new do |s|
  s.name        = "red_socket"
  s.version     = RedSocket::VERSION
  s.authors     = ["Mariusz Wyrozebski"]
  s.email       = ["mariuszwyrozebski@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Message sending wrapper for red-socket.com service.}
  s.description = %q{red-socket.com is a service providing push notifications to clients listening to websockets. Gem is a wrapper for the service to allow pushing messages.}

  s.rubyforge_project = "red_socket"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  s.add_development_dependency "rake"
  s.add_development_dependency "em-http-request"
  s.add_development_dependency "eventmachine"
  # s.add_runtime_dependency "rest-client"
end
