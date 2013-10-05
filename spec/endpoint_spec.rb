require 'spec_helper'
require 'yahoo_stocks/endpoint'

describe YahooStocks::Endpoint do

    context "with one symbol" do

      it "as array of strings" do
        subject.get_uri(s: %W{AAPL}, f: %W{nsl1o}).should end_with '?s=AAPL&f=nsl1o'
      end

      it "as array of strings" do
        subject.get_uri(s: [:AAPL], f: [:nsl1o]).should end_with '?s=AAPL&f=nsl1o'
      end

      it "as symbol" do
        subject.get_uri(s: :AAPL, f: :nsl1o).should end_with '?s=AAPL&f=nsl1o'
      end

      it "as string" do
        subject.get_uri(s: 'AAPL', f: 'nsl1o').should end_with '?s=AAPL&f=nsl1o'
      end

    end

end
