# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'system_command_helper/version'

Gem::Specification.new do |spec|
  spec.name          = "system_command_helper"
  spec.version       = SystemCommandHelper::VERSION
  spec.authors       = ["Narazaka"]
  spec.email         = ["info@narazaka.net"]

  spec.summary       = %q{system command helper}
  spec.description   = %q{system / exec commands with shell like output}
  spec.homepage      = "https://github.com/SystemCommandHelperRB/system_command_helper"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "yard", "~> 0.8.7"
  spec.add_development_dependency "simplecov", "~> 0.11"
  spec.add_development_dependency "codecov", "~> 0.1"
end
