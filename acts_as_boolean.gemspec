Gem::Specification.new do |s|
  s.name        = 'acts_as_boolean'
  s.version     = '0.1.0'
  s.platform    = Gem::Platform::RUBY
  s.author      = 'Tim Harvey'
  s.email       = 'tim@theharveys.org'
  s.summary     = 'Acts As Boolean'
  s.description = 'Create question-mark attr_accessor model methods'

  s.files         = ['acts_as_boolean.rb']
  s.test_file     = 'acts_as_boolean_spec.rb'
  s.require_path  = '.'

  s.add_development_dependency('rspec', ["~> 2.0"])
end