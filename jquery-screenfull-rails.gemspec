$:.push File.expand_path('../lib', __FILE__)
require 'jquery/screenfull/rails/version'

Gem::Specification.new do |s|
  s.name          = 'jquery-screenfull-rails'
  s.version       = Jquery::Screenfull::Rails::VERSION
  s.authors       = ['Leonid Beder']
  s.email         = ['leonid.beder@gmail.com']
  s.license       = 'MIT'
  s.homepage      = ''
  s.summary       = 'A jquery wrapper around the screenfull.js library'
  s.description   = 'A jquery wrapper around the screenfull.js library, with Rails integration'

  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|s|features)/})
  s.require_paths = ['lib']

  s.add_dependency 'railties', '>= 3.1.0'
end
