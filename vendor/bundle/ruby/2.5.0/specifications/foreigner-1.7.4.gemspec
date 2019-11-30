# -*- encoding: utf-8 -*-
# stub: foreigner 1.7.4 ruby lib

Gem::Specification.new do |s|
  s.name = "foreigner".freeze
  s.version = "1.7.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.5".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Matthew Higgins".freeze]
  s.date = "2015-03-31"
  s.description = "Adds helpers to migrations and dumps foreign keys to schema.rb".freeze
  s.email = "developer@matthewhiggins.com".freeze
  s.homepage = "http://github.com/matthuhiggins/foreigner".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2".freeze)
  s.rubyforge_project = "foreigner".freeze
  s.rubygems_version = "2.7.3".freeze
  s.summary = "Foreign Keys for Rails".freeze

  s.installed_by_version = "2.7.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>.freeze, [">= 3.0.0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<mocha>.freeze, [">= 0"])
    else
      s.add_dependency(%q<activerecord>.freeze, [">= 3.0.0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<mocha>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<activerecord>.freeze, [">= 3.0.0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<mocha>.freeze, [">= 0"])
  end
end
