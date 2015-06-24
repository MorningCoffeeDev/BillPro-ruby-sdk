# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bill_pro/version'

Gem::Specification.new do |spec|
  spec.name          = "bill_pro"
  spec.version       = BillPro::VERSION
  spec.authors       = ["Yang Bo"]
  spec.email         = ["yangbodotnet@gmail.com"]
  spec.summary       = %q{BillPro-ruby-sdk is sdk for payment gateway}
  spec.description   = %q{BillPro-ruby-sdk provide easy way to access the APIs on BillPro}
  spec.homepage      = "http://morningcoffee.com.au/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  if RUBY_ENGINE == 'ruby'
    spec.add_dependency 'faraday_middleware', '~> 0'
  end
end
