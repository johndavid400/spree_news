# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_news'
  s.version     = '1.0.0'
  s.summary     = 'Adds a Javascript enabled scrolling news feed ticker wherever you call it'
  s.description = 'Provides an Admin view to create/edit posts which will be shown on the home page in a scrolling news ticker window below the products listing.'
  s.required_ruby_version = '>= 1.9.2'

  s.author            = 'JD Warren'
  s.email             = 'johndavid400@gmail.com'
  s.homepage          = 'http://github.com/johndavid400/spree_news'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

end
