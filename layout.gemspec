# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "layout/version"

Gem::Specification.new do |s|
  s.name        = "layout"
  s.version     = Layout::Version::STRING
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Nando Vieira"]
  s.email       = ["fnando.vieira@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/layout"
  s.summary     = "Specify which layout will be rendered on Rails 3 apps"
  s.description = "Specify which layout will be rendered on Rails 3 apps"

  s.rubyforge_project = "layout"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "rails", ">= 3.0.0"
  s.add_development_dependency "rspec-rails", "2.0.1"
  s.add_development_dependency "ruby-debug19"
end
