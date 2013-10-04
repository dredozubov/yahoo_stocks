module YahooFinance
  module Backend
    class BasicBackend
      def produce_row(*args)
        raise NotImplementedError, 'backend not implemented'
      end
    end
  end
end

