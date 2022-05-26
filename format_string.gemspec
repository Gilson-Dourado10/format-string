require_relative 'lib/format_string/version'

Gem::Specification.new do |spec|
  spec.name          = "format_string"
  spec.version       = FormatString::VERSION
  spec.authors       = ["gilson dourado"]
  spec.email         = ["gilsondourado10@gmail.com "]

  spec.summary       = %q{ Write a short summary, because RubyGems requires one.}
  spec.description   = %q{ Write a longer description or delete this line.}
  spec.homepage      = "http://www.mygemserver.com"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~>3.0"
end
