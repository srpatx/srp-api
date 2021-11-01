require_relative "lib/srp/api/version"

Gem::Specification.new do |spec|
  spec.name          = "srp-api"
  spec.version       = Srp::Api::VERSION
  spec.authors       = ["Adam Milligan", "Grant Hutchins"]
  spec.email         = ["adam@srp-ok.com", "grant.hutchins@srp-ok.com"]

  spec.summary       = "Common API behavior"
  spec.homepage      = "https://github.com/StrongholdResourcePartners/srp-api"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 3.0.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/StrongholdResourcePartners/srp-api"
  spec.metadata["changelog_uri"] = "https://github.com/StrongholdResourcePartners/srp-api/releases"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) { `git ls-files -z`.split("\x0") }
  spec.require_paths = ["lib"]

  # Support both HTTP.rb 4 and 5
  spec.add_dependency("http", ">= 4.4")

  spec.add_development_dependency("activesupport", "~> 6.1")
  spec.add_development_dependency("rake", "~> 13.0")
  spec.add_development_dependency("rspec", "~> 3.10")
  spec.add_development_dependency("rubocop")
end

