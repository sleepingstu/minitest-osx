# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "minitest-osx"
  spec.version       = "0.2.0"
  spec.authors       = ["Tom Bell"]
  spec.email         = ["tomb@tomb.io"]
  spec.summary       = %q{A minitest reporter for the Mac OS X notification center}
  spec.description   = %q{A minitest reporter that reports the test stauts to the Mac OS X notification on 10.9+}
  spec.homepage      = "https://github.com/tombell/minitest-osx"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "minitest", "~> 5.4"
  spec.add_dependency "terminal-notifier", "~> 2.0"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.3"
end
