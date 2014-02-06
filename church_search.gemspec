# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "church_search/version"

Gem::Specification.new do |s|
  s.name        = "church_search"
  s.version     = ChurchSearch::VERSION
  s.authors     = ["JayTeeSr"]
  s.email       = ["jaytee_sr_at_his-service_dot_net"]
  s.homepage    = "https://github.com/JayTeeSF/church_search"
  s.summary     = %q{Twitter Search for what Pastors are saying}
  s.description = %q{Twitter Search for what Pastors are saying}
  s.rubyforge_project = "church_search"
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.bindir        = 'bin'
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_dependency 'twitter', '~> 5.6.0'

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec", "~> 2.11.0"
  #s.add_development_dependency "ruby-debug19"
end
