require 'yahoo_stocks/endpoint'
require 'yahoo_stocks/quotes'
require 'yahoo_stocks/version'

module YahooStocks
  backend = :hash
  include YahooStocks::Endpoint
end
