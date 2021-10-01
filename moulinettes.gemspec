Gem::Specification.new do |s|
  s.name        = "moulinettes"
  s.version     = "0.1.0"
  s.licenses    = ["MIT"]
  s.summary     = "Data Migration Task Generator"
  s.description = "Easily generate data migration moulinettes."
  s.authors     = ["Mehdi Lahmam", "Thomas Soler"]
  s.email       = "bonjour@grinta.eu"
  s.homepage    = "https://github.com/grinta/moulinettes"
  s.metadata    = { "source_code_uri" => "https://github.com/grinta/moulinettes" }

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]


  s.add_runtime_dependency "tty-progressbar"
end
