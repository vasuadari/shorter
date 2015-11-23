lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shorter/version'

Gem::Specification.new do |gem|
  gem.name         = 'shorter'
  gem.version      = Shorter::VERSION
  gem.date         = '2015-11-23'
  gem.summary      = "shorter for rails' methods"
  gem.description  = 'An idea to reduce a piece of code'
  gem.authors      = ["Vasu Adari"]
  gem.email        = 'vasuakeel@gmail.com'
  gem.homepage     = 'https://github.com/vasuakeel/shorter'

  gem.files        = `git ls-files`.split($/)
  gem.require_path = 'lib'

  gem.license      = 'MIT'

  gem.required_ruby_version = '>= 2.0.0'
end
