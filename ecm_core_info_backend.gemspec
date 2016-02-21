$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ecm/core_info/backend/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ecm_core_info_backend"
  s.version     = Ecm::CoreInfo::Backend::VERSION
  s.authors     = ["Roberto Vasquez Angel"]
  s.email       = ["roberto@vasquez-angel.de"]
  s.homepage    = "https://github.com/robotex82/ecm_core_info_backend"
  s.summary     = "Ecm::CoreInfo::Backend."
  s.description = "Ecm::CoreInfo::Backend Module."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails"
end
