Gem::Specification.new do |spec|
  spec.name          = "ruby-training-2021"
  spec.version       = "0.0.0"
  spec.summary       = "GemAlghorithms"
  spec.description   = "Gem contendo os algoritmos desevolvidos"
  spec.authors       = ["Gustavo Mendes"]
  spec.email         = 'gustavocod18@gmail.com'
  spec.homepage      = 'https://github.com/gustavomendess/ruby-training-2021'
  spec.license       = 'MIT'
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end