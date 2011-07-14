# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{tinymce_hammer}
  s.version = "0.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Trevor Rowe", "Thomas von Deyen"]
  s.date = %q{2011-06-05}
  s.description = %q{TinyMCE Hammer makes its easy to use the TinyMCE WYSIWYG editor inside a Ruby
    On Rails (3+) application.}
  s.email = %q{tvdeyen@gmail.com}
  s.homepage = %q{https://github.com/tvdeyen/tinymce_hammer}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{TinyMCE WYSIWYG editor for your Rails 3 application.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
