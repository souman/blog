# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ckeditor}
  s.version = "3.5.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Igor Galeta"]
  s.date = %q{2011-05-25}
  s.description = %q{CKEditor is a WYSIWYG editor to be used inside web pages}
  s.email = %q{galeta.igor@gmail.com}
  s.homepage = %q{http://github.com/galetahub/rails-ckeditor}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{ckeditor}
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Rails plugin for integration ckeditor 3.x}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mime-types>, [">= 1.16"])
    else
      s.add_dependency(%q<mime-types>, [">= 1.16"])
    end
  else
    s.add_dependency(%q<mime-types>, [">= 1.16"])
  end
end
