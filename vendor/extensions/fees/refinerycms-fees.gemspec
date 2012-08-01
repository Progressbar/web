# Encoding: UTF-8

Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-fees'
  s.version           = '1.0'
  s.description       = 'Ruby on Rails Fees extension for Refinery CMS'
  s.date              = '2012-05-09'
  s.summary           = 'Fees extension for Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir["{app,config,db,lib}/**/*"] + ["readme.md"]

  # Runtime dependencies
  # s.add_dependency             'refinerycms-core'

end
