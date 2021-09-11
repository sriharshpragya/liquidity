# frozen_string_literal: true

require_relative "lib/liquidity/version"

Gem::Specification.new do |spec|
  spec.name          = "liquidity"
  spec.version       = Liquidity::VERSION
  spec.authors       = ["Pragya"]
  spec.email         = ["freelancer.prag@gmail.com"]

  spec.summary       = %q{Gem for extending Peatio upstream plugable system with crypto.com implementation.}
  spec.description   = %q{Liquidity Peatio gem which implements Peatio::Upstream::Base.}
  spec.homepage      = "https://openware.com/"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
  spec.add_dependency "em-synchrony", "~> 1.0"
  spec.add_dependency "em-websocket"
  spec.add_dependency "eventmachine"
  spec.add_dependency "faraday_middleware", "~> 0.13.1"
  spec.add_dependency "faye", "~> 1.2"
  spec.add_dependency "peatio", ">= 2.4.2"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "em-spec"
  spec.add_development_dependency "em-websocket-client"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rspec_junit_formatter"
  spec.add_development_dependency "rubocop-github"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "simplecov-json"
end
