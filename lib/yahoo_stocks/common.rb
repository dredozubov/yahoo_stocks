require 'yahoo_stocks/endpoint/tags'

module YahooStocks
  module Common

    include YahooStocks::Endpoint::Tags

    private

    def get_values(values)
      case values
      when String then [values]
      when Symbol then [values.to_s]
      when Array then values.map(&:to_s)
      end
    end

    def get_format(tags)
      return tags if tags.is_a? String
      tags.map! do |tag|
        case tag
        when /^\w{1,2}$/ then tag
        else TAGS[tag]
        end
      end

      tags.compact.join

    end
  end
end
