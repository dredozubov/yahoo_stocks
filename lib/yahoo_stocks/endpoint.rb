require 'uri'
require 'yahoo_stocks/common'

module YahooStocks
  module Endpoint

    extend URI::Escape
    include YahooStocks::Common

    DEFAULT_ENDPOINT = 'http://download.finance.yahoo.com/d/quotes.csv?'
    DEFAULT_FORMAT = 'n0s0l1op0'

    def self.compose_quotes(symbols, format = DEFAULT_FORMAT)
      options = {}
      options[:s] = symbols
      URI.parse(get_uri(format, options))
    end

    private

    def self.get_uri(format, options={})
      DEFAULT_ENDPOINT + joined(options) + "&f=#{format}"
    end

    def self.joined(options)
      out = options.inject('') do |s, el|
        option, values = el
        values = get_values(values)
        s << "#{option}=#{values.map{ |v| escape(v) }.join(',')}&"
      end
      out.chomp!('&')
      out
    end

    def self.get_values(values)
      case values
      when String then [values]
      when Symbol then [values.to_s]
      when Array then values.map(&:to_s)
      end
    end

  end
end
