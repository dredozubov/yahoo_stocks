$LOAD_PATH << '.'
require "lib/yahoo_stocks"
 
task :build do
  system "gem build yahoo_stocks.gemspec"
end
 
task :release => :build do
  system "gem push yahoo_stocks-#{YahooStocks::VERSION}"
end
