$LOAD_PATH << File.expand_path('./lib')
require 'yahoo_stocks'

spec = Gem::Specification.new do |gem|
  gem.name = 'yahoo_stocks'
  gem.summary = 'Sane Yahoo! Finance rubiesque client'
  gem.version = YahooStocks::VERSION
  gem.date = Date.today.to_s

  gem.authors = ['Denis Redozubov']
  gem.license = 'MIT'
  gem.email = 'denis.redozubov@gmail.com'
  gem.homepage = 'http://github.com/dredozubov/yahoo_stocks'

  gem.files = Dir['Rakefile', '{lib,spec}/**/*', 'README', 'LICENSE']

  gem.add_dependency('rake', '~> 0')
  gem.add_development_dependency('rspec', '~> 0')
end

