# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ucloth/version"

Gem::Specification.new do |s|
  s.name        = "ucloth"
  s.version     = Ucloth::VERSION
  s.authors     = ["basyura"]
  s.email       = ["basyura@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{RedCloth's wrapper}
  s.description = %q{RedCloth's wrapper}

  s.rubyforge_project = "ucloth"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
