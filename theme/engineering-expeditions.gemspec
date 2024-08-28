# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "engineering-expeditions-theme"
  spec.version       = "0.1.0"
  spec.authors       = ["Mitchell Stanton"]
  spec.email         = ["themes@mitchs.dev"]

  spec.summary       = "This is the theme for the Engineering Expeditions blog."
  spec.homepage      = "https://mitchs.dev/blogs/engineering-expeditions"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files                   = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(assets|_(data|includes|layouts|sass)/|(LICENSE|README|CHANGELOG)((\.(txt|md|markdown)|$)))}i)
  end

  spec.add_runtime_dependency "jekyll", ">= 3.7", "< 5.0"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.3"
  spec.add_runtime_dependency "jekyll-gist", "~> 1.5"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.1"
  spec.add_runtime_dependency "jekyll-include-cache", "~> 0.1"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", ">= 12.3.3"
end