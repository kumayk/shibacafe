# -*- encoding: utf-8 -*-
# stub: CFPropertyList 2.3.6 ruby lib

Gem::Specification.new do |s|
  s.name = "CFPropertyList".freeze
  s.version = "2.3.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Christian Kruse".freeze]
  s.date = "2017-12-06"
  s.description = "This is a module to read, write and manipulate both binary and XML property lists as defined by apple.".freeze
  s.email = "cjk@defunct.ch".freeze
  s.extra_rdoc_files = ["README".freeze]
  s.files = ["README".freeze]
  s.homepage = "http://github.com/ckruse/CFPropertyList".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.14.3".freeze
  s.summary = "Read, write and manipulate both binary and XML property lists as defined by apple".freeze

  s.installed_by_version = "2.6.14.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, [">= 0.7.0"])
    else
      s.add_dependency(%q<rake>.freeze, [">= 0.7.0"])
    end
  else
    s.add_dependency(%q<rake>.freeze, [">= 0.7.0"])
  end
end
