require 'spec_helper'
require 'yahoo_stocks/quotes'

describe YahooStocks::Quotes do

  let(:symbol) { :AAPL }
  let(:format) { [:l1, :v1] }

  describe "dynamic calls" do

    context "with format" do

      specify 'upcase' do
        subject.should_receive(symbol).with(kind_of(Array))
        expect { subject.send(symbol, format) }.to_not raise_error
      end

      specify 'downcase' do
        s = symbol.downcase.to_sym
        subject.should_receive(s).with(kind_of(Array))
        expect { subject.send(s, format) }.to_not raise_error
      end

    end

    specify "without format" do
      subject.should_receive(symbol)
      expect { subject.send(symbol) }.to_not raise_error
    end

  end

  describe '.get' do

    context 'symbol as ' do

      specify 'array of symbols' do
        expect { subject.get([:AAPL, :GOOG], format) }.to_not raise_error
      end

      specify 'array of strings' do
        expect { subject.get(%W{AAPL GOOG}, format) }.to_not raise_error
      end

      specify 'symbol' do
        expect { subject.get(symbol, format) }.to_not raise_error
      end

      specify 'string' do
        expect { subject.get(symbol.to_s, format) }.to_not raise_error
      end

    end

  end

end
