# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{multicast}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Marshall Huss"]
  s.date = %q{2010-05-19}
  s.default_executable = %q{mclisten}
  s.description = %q{Multicasting in Ruby}
  s.email = %q{mwhuss@gmail.com}
  s.executables = ["mclisten"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "bin/mclisten",
     "lib/multicast.rb",
     "multicast.gemspec",
     "test/helper.rb",
     "test/test_multicast.rb"
  ]
  s.homepage = %q{http://github.com/mwhuss/multicast}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Multicasting in Ruby}
  s.test_files = [
    "test/helper.rb",
     "test/test_multicast.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<thoughtbot-shoulda>, [">= 0"])
      s.add_development_dependency(%q<choices>, [">= 0.1.4"])
    else
      s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
      s.add_dependency(%q<choices>, [">= 0.1.4"])
    end
  else
    s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
    s.add_dependency(%q<choices>, [">= 0.1.4"])
  end
end

