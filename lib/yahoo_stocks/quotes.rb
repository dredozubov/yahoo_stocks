require 'yahoo_stocks/common'

module YahooStocks
  module Quotes

    include YahooStocks::Common

    def self.get(symbol, format)
    end

    def self.method_missing(symbol, format)
      #get([symbol], format)
    end

  end
end
