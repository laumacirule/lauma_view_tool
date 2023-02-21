# frozen_string_literal: true

require_relative "lib/lauma_view_tool/version"

Gem::Specification.new do |spec|
  spec.name = "lauma_view_tool"
  spec.version = LaumaViewTool::VERSION
  spec.authors = ["Lauma Cirule"]
  spec.email = ["laumii@gmail.com"]

  spec.summary = "Various view specific methods for learning projects."
  spec.description = "Provides generated HTML data for Rails applications."
  spec.homepage = "https://github.com/laumacirule/"
  spec.required_ruby_version = ">= 2.5.0"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
