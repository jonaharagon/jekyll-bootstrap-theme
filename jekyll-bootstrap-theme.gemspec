# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-bootstrap-theme"
  spec.version       = "5.0.0.beta3"
  spec.authors       = ["Jonah Aragon"]
  spec.email         = ["jonah@triplebit.net"]

  spec.summary       = "A Bootstrap 5 theme for Jekyll."
  spec.homepage      = "https://github.com/jonaharagon/jekyll-bootstrap-theme"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", ">= 4.2", "<5.0"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.9"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.1"
end
