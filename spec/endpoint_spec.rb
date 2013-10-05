require 'spec_helper'
require 'uri'
require 'yahoo_stocks/endpoint'

describe YahooStocks::Endpoint do

    let(:format) { YahooStocks::Endpoint::DEFAULT_FORMAT }
    let(:test_params) { "?s=AAPL&f=#{format}" }

    describe "compose quotes uri" do
      YahooStocks::Endpoint.compose_quotes(:AAPL).should == \
        URI.parse('http://download.finance.yahoo.com/d/quotes.csv?s=AAPL&f=n0s0l1op0')
    end

    describe "get_uri with one symbol" do

      it "as array of strings" do
        subject.get_uri(format, s: %W{AAPL}).should end_with test_params
      end

      it "as array of strings" do
        subject.get_uri(format, s: [:AAPL]).should end_with test_params
      end

      it "as symbol" do
        subject.get_uri(format, s: :AAPL).should end_with test_params
      end

      it "as string" do
        subject.get_uri(format, s: 'AAPL').should end_with test_params
      end

    end

end
