# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = 'lcclasses'
  s.version = '0.2.1'
  s.licenses = ['MIT']
  s.summary = 'Library of Congress Classification classes and subclasses.'
  s.description = 'Library of Congress Classification classes and subclasses.'
  s.authors = ['William Melody']
  s.email = 'hi@williammelody.com'
  s.date = '2020-03-18'
  s.extra_rdoc_files = [
    'LICENSE',
    'README.md'
  ]
  s.files = [
    '.document',
    '.gitignore',
    'LICENSE',
    'README.md',
    'Rakefile',
    'lcclasses.gemspec',
    'lib/lcclasses.rb',
    'test/helper.rb',
    'test/test_lcclasses.rb'
  ]
  s.test_files = [
    'test/helper.rb',
    'test/test_lcclasses.rb'
  ]
  s.homepage = 'http://github.com/xwmx/lcclasses'
  s.require_paths = ['lib']
  s.add_development_dependency('minitest',  '~> 5', '>= 0')
  s.add_development_dependency('rdoc',      '~> 6', '>= 0')
  s.add_development_dependency('rubocop',   '~> 0', '>= 0.49.0')
  s.required_ruby_version = '>= 2.3'
end
