# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll_video_tag/version'

Gem::Specification.new do |spec|
  spec.name          = "jekyll-video-tag"
  spec.version       = JekyllVideoTag::VERSION
  spec.authors       = ["Dan Barber"]
  spec.email         = ["hello@danbarber.me"]
  spec.summary       = %q{Responsive video tag for Jekyll.}
  spec.description   = %q{Responsive video tag for Jekyll. Allows and iframe embeddable video to be responsive.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "jekyll"
end
