require "./lib/layout/version"

Gem::Specification.new do |s|
  s.name        = "layout"
  s.version     = Layout::Version::STRING
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Nando Vieira"]
  s.email       = ["fnando.vieira@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/layout"
  s.summary     = "Specify which layout will be rendered on Rails apps"
  s.description = s.summary

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{|f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "rails"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "pry"
  s.add_development_dependency "awesome_print"
end
