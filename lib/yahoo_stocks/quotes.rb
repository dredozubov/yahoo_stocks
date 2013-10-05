require 'yahoo_stocks/common'
require 'yahoo_stocks/backend'
require 'yahoo_stocks/endpoint'
require 'yahoo_stocks/http'

module YahooStocks
  module Quotes

    BACKEND = YahooStocks::Backend::Array

    include YahooStocks::Endpoint
    extend YahooStocks::Http

    def self.get(symbols, format = nil)
      uri = YahooStocks::Endpoint.compose_quotes(symbols, format)
      response = http_get(uri)
      BACKEND.new.produce(response)
    end

    def self.method_missing(symbol, format = nil)
      # http://yehudakatz.com/2010/01/02/the-craziest-fing-bug-ive-ever-seen/
      super if symbol == :to_ary
      get([symbol], format)
    end

  end
end
