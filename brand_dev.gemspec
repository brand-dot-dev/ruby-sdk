# frozen_string_literal: true

require_relative "lib/brand_dev/version"

Gem::Specification.new do |s|
  s.name = "brand.dev"
  s.version = BrandDev::VERSION
  s.summary = "Ruby library to access the Brand Dev API"
  s.authors = ["Brand Dev"]
  s.email = ""
  s.homepage = "https://gemdocs.org/gems/brand.dev"
  s.license = "Apache-2.0"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/stainless-sdks/brand.dev-ruby"
  s.metadata["rubygems_mfa_required"] = false.to_s
  s.required_ruby_version = ">= 3.2.0"

  s.files = Dir[
    "lib/**/*.rb",
    "rbi/**/*.rbi",
    "sig/**/*.rbs",
    "manifest.yaml",
    "SECURITY.md",
    "CHANGELOG.md",
    ".ignore"
  ]
  s.extra_rdoc_files = ["README.md"]
  s.add_dependency "connection_pool", "~> 2.2"
end
