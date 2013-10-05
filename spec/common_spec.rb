require 'spec_helper'
require 'yahoo_stocks/common'

describe YahooStocks::Common do

  include YahooStocks::Common

  describe '.get_format' do

    it "works with strings" do
      expect { get_format("foo") }.to raise_error
    end

    it "works with array of symbols" do
      get_format([:v1, :s1, :l1]).should == "v1s1l1"
    end

    it "works with array of strings" do
      get_format(%W{v1 s1 l1}).should == "v1s1l1"
    end

  end

  describe '.get_values' do

    it "works with string" do
      get_values("AAPL").should == %W{AAPL}
    end

    it "works with array of symbols" do
      get_values([:AAPL, :GOOG]).should == %W{AAPL GOOG}
    end

    it "works with array of strings" do
      get_values(%W{AAPL GOOG}).should == %W{AAPL GOOG}
    end

  end

end

