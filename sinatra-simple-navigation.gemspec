# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sinatra/simple_navigation/version'

Gem::Specification.new do |spec|
  spec.name             = 'sinatra-simple-navigation'
  spec.version          = Sinatra::SimpleNavigation::VERSION
  spec.authors          = ['Andi Schacke', 'Mark J. Titorenko']
  spec.email            = ['andi@codeplant.ch']
  spec.description      = 'A Sinatra extension to enable creating navigations ' \
                          'with the simple-navigation gem. Also works for '     \
                          'Padrino. See '                                       \
                          'http://github.com/codeplant/simple-navigation for '  \
                          'more information on simple-navigation.'
  spec.summary          = 'A Sinatra extension to enable creating navigations ' \
                          'with the simple-navigation gem. Also works for '     \
                          'Padrino.'
  spec.homepage         = 'http://github.com/codeplant/sinatra-simple-navigation'
  spec.license          = 'MIT'

  spec.files            = `git ls-files -z`.split("\x0")
  spec.executables      = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files       = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths    = ['lib']

  spec.rdoc_options     = ['--inline-source', '--charset=UTF-8']

  spec.add_runtime_dependency('simple-navigation', '>= 3.12.0')
end
