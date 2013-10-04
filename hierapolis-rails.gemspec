# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hierapolis/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "hierapolis-rails"
  spec.version       = Hierapolis::Rails::VERSION
  spec.authors       = ["lab2023"]
  spec.email         = ["info@lab2023.com"]
  spec.description   = %q{This gem using to  integrate hierapolis theme  on rails project.}
  spec.summary       = %q{this gem using to  integrate hierapolis theme  on rails project.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_runtime_dependency 'show_for', '~> 0.3.0.rc'
  spec.add_runtime_dependency 'will_paginate', '~> 3.0.3'
  spec.add_runtime_dependency 'will_paginate-bootstrap', '~> 0.2.3'
  spec.add_runtime_dependency 'ransack', '~> 1.0.0'
  spec.add_runtime_dependency 'breadcrumbs_on_rails', '~> 2.3.0'
  spec.add_runtime_dependency 'blankable', '~> 0.2.0'
  spec.add_runtime_dependency 'responder', '~> 0.2.4'
  spec.add_runtime_dependency 'haml', '~> 4.0.3'
  spec.add_runtime_dependency 'haml-rails', '~> 0.4'

end
