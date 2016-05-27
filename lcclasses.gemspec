# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q(lcclasses)
  s.version = '0.1.1'

  s.required_rubygems_version = Gem::Requirement.new('>= 0') if s.respond_to? :required_rubygems_version=
  s.authors = ['William Melody']
  s.date = %q(2016-05-09)
  s.description = %q(Library of Congress Classification classes and subclasses)
  s.email = %q(hi@williammelody.com)
  s.extra_rdoc_files = [
    'LICENSE',
     'README.markdown'
  ]
  s.files = [
    '.document',
     '.gitignore',
     'LICENSE',
     'README.markdown',
     'Rakefile',
     'lcclasses.gemspec',
     'lib/lcclasses.rb',
     'test/helper.rb',
     'test/test_lcclasses.rb'
  ]
  s.homepage = %q(http://github.com/alphabetum/lcclasses)
  s.licenses = ['MIT']
  s.rdoc_options = ['--charset=UTF-8']
  s.require_paths = ['lib']
  s.rubygems_version = %q(1.8.24)
  s.summary = %q(Library of Congress Classification classes and subclasses)
  s.test_files = [
    'test/helper.rb',
     'test/test_lcclasses.rb'
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q(minitest), ['>= 0'])
      s.add_development_dependency(%q(rdoc), ['>= 0'])
    else
      s.add_dependency(%q(minitest), ['>= 0'])
      s.add_dependency(%q(rdoc), ['>= 0'])
    end
  else
    s.add_dependency(%q(minitest), ['>= 0'])
    s.add_dependency(%q(rdoc), ['>= 0'])
  end
end
