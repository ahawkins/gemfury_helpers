# -*- encoding: utf-8 -*-
require File.expand_path('../lib/gemfury_helpers/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["adman65"]
  gem.email         = ["me@broadcastingadam.com"]
  gem.description   = %q{Bundler Gem Helpers for Gemfury}
  gem.summary       = ""
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "gemfury_helpers"
  gem.require_paths = ["lib"]
  gem.version       = GemfuryHelpers::VERSION

  gem.add_dependency "bundler"
end
