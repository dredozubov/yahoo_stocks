require 'uri'

module YahooStocks
  module Endpoint

    extend URI::Escape

    DEFAULT_ENDPOINT = 'http://download.finance.yahoo.com/d/quotes.csv?'

    def self.get_uri(options={})
      DEFAULT_ENDPOINT + joined(options)
    end

    private

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
