require 'yahoo_stocks/backend/basic'

module YahooStocks
  module Backend
    class Array < YahooStocks::Backend::Basic

      def produce(stream)
        result = []

        CSV.parse(stream.body, quote_char: '"') do |*values|
          result << values
        end

        result
      end

    end
  end
end
