# -*- encoding: utf-8 -*-
require File.expand_path('../lib/gzipped_strings/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Ivan Osadchii"]
  gem.email         = ["ivan.osadchii@gmail.com"]
  gem.description   = %q{Monkey patches String class to add #gz_compress and #gz_uncompress methods.}
  gem.summary       = %q{Allows to compress and decompress strings with Gzip}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "gzipped_strings"
  gem.require_paths = ["lib"]
  gem.version       = GzippedStrings::VERSION
end
