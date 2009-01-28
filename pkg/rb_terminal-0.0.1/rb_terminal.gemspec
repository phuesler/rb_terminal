# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rb_terminal}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Patrick Huesler"]
  s.date = %q{2009-01-28}
  s.description = %q{Ruby wrapper to open several osx terminal for a specific project}
  s.email = %q{patrick.huesler@gmail.com}
  s.extra_rdoc_files = ["lib/rb_terminal.rb", "README.rdoc"]
  s.files = ["lib/rb_terminal.rb", "Rakefile", "README.rdoc", "Manifest", "rb_terminal.gemspec"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/phusler/rb_terminal}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Rb_terminal", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{rb_terminal}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Ruby wrapper to open several osx terminal for a specific project}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
