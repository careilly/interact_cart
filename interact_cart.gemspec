$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "interact_cart/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "interact_cart"
  s.version     = InteractCart::VERSION
  s.authors     = ["Colman Reilly"]
  s.email       = ["careilly@mac.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of InteractCart."
  s.description = "TODO: Description of InteractCart."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0"
  s.add_dependency "haml-rails"
  s.add_dependency "stripe"
  s.add_dependency 'foundation-rails'
  s.add_dependency 'foundation-icons-sass-rails'

  s.add_development_dependency "sqlite3"
end
