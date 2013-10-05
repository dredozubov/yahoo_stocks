module YahooStocks
  module Common

    private

    def self.get_values(values)
      case values
      when String then [values]
      when Symbol then [values.to_s]
      when Array then values.map(&:to_s)
      end
    end

  end
end
