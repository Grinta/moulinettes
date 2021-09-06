Gem::Specification.new do |s|
  s.name        = 'moulinettes'
  s.version     = '0.1.0'
  s.licenses    = ['MIT']
  s.summary     = "This is an example!"
  s.description = "Much longer explanation of the example!"
  s.authors     = ["Ruby Coder"]
  s.email       = 'rubycoder@example.com'
  s.files       = ["lib/moulinettes.rb", "lib/generators/moulinettes/moulinette_generator.rb", "lib/generators/moulinettes/yyyymmdd_action_of_a_moulinette_task.rake"]
  s.homepage    = 'https://rubygems.org/gems/example'
  s.metadata    = { "source_code_uri" => "https://github.com/example/example" }
  s.add_runtime_dependency "tty-progressbar"
end