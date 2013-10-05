$LOAD_PATH << File.expand_path('./lib')
require 'yahoo_stocks'

spec = Gem::Specification.new do |gem|
  gem.name = "yahoo-stocks"
  gem.summary = "Sane Yahoo! Finance rubiesque client"
  gem.version = YahooStocks::VERSION
  gem.date = Date.today.to_s

  gem.authors = ["Denis Redozubov"]
  gem.email = "denis.redozubov@gmail.com"
  gem.homepage = "http://www.denisredozubov.com"

  gem.files = Dir['Rakefile', '{lib,spec}/**/*', 'README', 'LICENSE']

  gem.add_dependency("rake")
  gem.add_development_dependency("rspec")
end
