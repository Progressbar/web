# Encoding: UTF-8

Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-door_statuses'
  s.version           = '1.0'
  s.description       = 'Ruby on Rails Door Statuses forms-extension for Refinery CMS'
  s.date              = '2012-08-14'
  s.summary           = 'Door Statuses forms-extension for Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir["{app,config,db,lib}/**/*"] + ["readme.md"]

  # Runtime dependencies
  s.add_dependency    'refinerycms-core',     '~> 2.1.0.dev'
end
