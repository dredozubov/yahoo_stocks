require 'yahoo_stocks/common'
require 'yahoo_stocks/backend'

module YahooStocks
  module Quotes

    include YahooStocks::Common

    def self.get(symbol, format)

    end

    def self.method_missing(symbol, format)
      get([symbol], format)
    end

  end
end
