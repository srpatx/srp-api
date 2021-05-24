# frozen_string_literal: true

require_relative "lib/srp/api/version"

Gem::Specification.new do |spec|
  spec.name          = "srp-api"
  spec.version       = Srp::Api::VERSION
  spec.authors       = ["Adam Milligan"]
  spec.email         = ["adam@srp-ok.com"]

  spec.summary       = "Common API behavior"
  spec.homepage      = "https://github.com/StrongholdResourcePartners/srp-api"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.7.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/StrongholdResourcePartners/srp-api"
  spec.metadata["changelog_uri"] = "https://github.com/StrongholdResourcePartners/srp-api/releases"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) { `git ls-files -z`.split("\x0") }
  spec.require_paths = ["lib"]

  spec.add_dependency("http", "~> 5.0")

  spec.add_development_dependency("activesupport", "~> 6.1")
  spec.add_development_dependency("rake", "~> 13.0")
  spec.add_development_dependency("rspec", "~> 3.9")
  spec.add_development_dependency("rubocop", "~> 1.3")
end

