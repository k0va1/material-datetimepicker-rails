# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'material/datetimepicker/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "material-datetimepicker-rails"
  spec.version       = Material::Datetimepicker::Rails::VERSION
  spec.authors       = ["hetsketch"]
  spec.email         = ["al3xander.koval@gmail.com"]

  spec.summary       = %q{Material date and time picker assets for Rails}
  spec.description   = %q{Simple wrapper for material-datetime-picker JS library}
  spec.homepage      = "https://github.com/hetsketch/material-datetimepicker-rails"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    # spec.metadata['allowed_push_host'] = "http://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_runtime_dependency     "momentjs-rails", "~> 2.17", ">= 2.17.1"
  spec.add_runtime_dependency     "rome-rails", "~> 2.1", ">= 2.1.22"
end
