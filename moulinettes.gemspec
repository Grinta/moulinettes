Gem::Specification.new do |s|
  s.name        = "moulinettes"
  s.version     = "0.1.0"
  s.licenses    = ["MIT"]
  s.summary     = "Data Migration Task Generator"
  s.description = "Easily generate data migration moulinettes."
  s.authors     = ["Mehdi Lahmam", "Thomas Soler"]
  s.email       = "bonjour@grinta.eu"
  s.files       = ["lib/moulinettes.rb", "lib/generators/moulinettes/moulinette_generator.rb", "lib/generators/moulinettes/yyyymmdd_action_of_a_moulinette_task.rake"]
  s.homepage    = "https://github.com/grinta/moulinettes"
  s.metadata    = { "source_code_uri" => "https://github.com/grinta/moulinettes" }

  s.add_runtime_dependency "tty-progressbar"
end