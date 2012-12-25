# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lingman/version'

Gem::Specification.new do |gem|
  gem.name          = "lingman"
  gem.version       = Jizou::VERSION
  gem.authors       = ["Hiroshi Yoshida"]
  gem.email         = ["hrysd22@gmail.com"]
  gem.description   = %q{I wanna be LingrAPI wrapper}
  gem.summary       = %q{I wanna be LingrAPI wrapper}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
