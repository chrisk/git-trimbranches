# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.name          = "git-trimbranches"
  gem.version       = "1.0.0"
  gem.authors       = ["Chris Kampmeier"]
  gem.email         = ["chris@kampers.net"]
  gem.description   = "A handy little git porcelain to automate the removal of " +
                      "old topic branches you've already merged to master."
  gem.summary       = "Git porcelain to remove old topic branches"
  gem.homepage      = "https://github.com/chrisk/git-trimbranches"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
end
