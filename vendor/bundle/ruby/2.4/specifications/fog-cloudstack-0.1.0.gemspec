# -*- encoding: utf-8 -*-
# stub: fog-cloudstack 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "fog-cloudstack".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["cloud.ca".freeze, "geemus (Wesley Beary)".freeze]
  s.date = "2019-06-17"
  s.description = "Module for the 'fog' gem to support Cloudstack".freeze
  s.email = ["infra@cloud.ca".freeze, "geemus@gmail.com".freeze]
  s.homepage = "https://github.com/fog/fog-cloudstack".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "2.6.14.3".freeze
  s.summary = "Module for the 'fog' gem to support Cloudstack".freeze

  s.installed_by_version = "2.6.14.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 2.0"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rubyzip>.freeze, ["~> 1.2.1"])
      s.add_development_dependency(%q<shindo>.freeze, ["~> 0.3"])
      s.add_runtime_dependency(%q<fog-core>.freeze, ["~> 2.1"])
      s.add_runtime_dependency(%q<fog-json>.freeze, ["~> 1.1"])
      s.add_runtime_dependency(%q<fog-xml>.freeze, ["~> 0.1"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 2.0"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rubyzip>.freeze, ["~> 1.2.1"])
      s.add_dependency(%q<shindo>.freeze, ["~> 0.3"])
      s.add_dependency(%q<fog-core>.freeze, ["~> 2.1"])
      s.add_dependency(%q<fog-json>.freeze, ["~> 1.1"])
      s.add_dependency(%q<fog-xml>.freeze, ["~> 0.1"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 2.0"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rubyzip>.freeze, ["~> 1.2.1"])
    s.add_dependency(%q<shindo>.freeze, ["~> 0.3"])
    s.add_dependency(%q<fog-core>.freeze, ["~> 2.1"])
    s.add_dependency(%q<fog-json>.freeze, ["~> 1.1"])
    s.add_dependency(%q<fog-xml>.freeze, ["~> 0.1"])
  end
end
