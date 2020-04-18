$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "todo/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "todo"
  spec.version     = Todo::VERSION
  spec.authors     = ["kamalogudah"]
  spec.email       = ["mcpaul2058@gmail.com"]
  spec.homepage    = "http://dearfola.com"
  spec.summary     = "A todo engine."
  spec.description = "Add todo functionality in a Rails App."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.2", ">= 6.0.2.2"

  spec.add_development_dependency "pg"
end
