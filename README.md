yahoo_stocks
============

[![Gem
Version](https://badge.fury.io/rb/yahoo_stocks.png)](http://badge.fury.io/rb/yahoo_stocks)

Nice, fluffy and rubiesque "Yahoo! Finance" client

###Usage examples:

```ruby
YahooStocks::Quotes.get(:goog)
=> ["APL", "33.08", "+0.18", "32.90"]

YahooStocks::Quotes.goog
=> ["APL", "33.08", "+0.18", "32.90"]
```

If format is not provided, default will be used.
```ruby
FORMAT = [:symbol, :last_trade_price_only, :change, :previous_close]
```

If you want to get a list of specific fields, you can supply optional *format*
argument. You can supply human-readable format or yahoo-api versions.
(Correspondence table below)

```ruby
YahooStocks::Quotes.get(:GOOG, format: [:last_trade_time, :name])
=> ["4:00pm", "Google Inc."]

YahooStocks::Quotes.GOOG format: [:last_trade_time, :name]
=> ["4:00pm", "Google Inc."]

YahooStocks::Quotes.get(:goog, format: [:b3, :c1])
=> ["31.48", "+0.18"]

YahooStocks::Quotes.goog format: [:b3, :c1]
=> ["31.48", "+0.18"]
```

### Format fields correspondence table

This fields correspond to "Yahoo! finance" API and used in format parameter.

|human-readable|"yahoo! finance" api|
|:----|----------:|
|after_hours_change_realtime|c8|
|annualized_gain|g3|
|ask|a0|
|ask_realtime|b2|
|ask_size|a5|
|average_daily_volume|a2|
|bid|b0|
|bid_realtime|b3|
|bid_size|b6|
|book_value_per_share|b4|
|change|c1|
|change__change_in_percent|c0|
|change_from_fiftyday_moving_average|m7|
|change_from_two_hundredday_moving_average|m5|
|change_from_year_high|k4|
|change_from_year_low|j5|
|change_in_percent|p2|
|change_in_percent_realtime|k2|
|change_realtime|c6|
|commission|c3|
|currency|c4|
|days_high|h0|
|days_low|g0|
|days_range|m0|
|days_range_realtime|m2|
|days_value_change|w1|
|days_value_change_realtime|w4|
|dividend_pay_date|r1|
|trailing_annual_dividend_yield|d0|
|trailing_annual_dividend_yield_in_percent|y0|
|diluted_eP_s|e0|
|e_bI_tD_a|j4|
|e_pS_estimate_current_year|e7|
|e_pS_estimate_next_quarter|e9|
|e_pS_estimate_next_year|e8|
|ex_dividend_date|q0|
|fiftyday_moving_average|m3|
|shares_float|f6|
|high_limit|l2|
|holdings_gain|g4|
|holdings_gain_percent|g1|
|holdings_gain_percent_realtime|g5|
|holdings_gain_realtime|g6|
|holdings_value|v1|
|holdings_value_realtime|v7|
|last_trade_date|d1|
|last_trade_price_only|l1|
|last_trade_realtime_with_time|k1|
|last_trade_size|k3|
|last_trade_time|t1|
|last_trade_with_time|l0|
|low_limit|l3|
|market_capitalization|j1|
|market_cap_realtime|j3|
|more_info|i0|
|name|n0|
|notes|n4|
|oneyr_target_price|t8|
|open|o0|
|order_book_realtime|i5|
|p_eG_ratio|r5|
|p_eRatio|r0|
|p_eRatio_realtime|r2|
|percent_change_from_fiftyday_moving_average|m8|
|percent_change_from_two_hundredday_moving_average|m6|
|change_in_percent_from_year_high|k5|
|percent_change_from_year_low|j6|
|previous_close|p0|
|price_book|p6|
|price_eP_sEstimate_current_year|r6|
|price_eP_sEstimate_next_year|r7|
|price_paid|p1|
|price_sales|p5|
|revenue|s6|
|shares_owned|s1|
|shares_outstanding|j2|
|short_ratio|s7|
|stock_exchange|x0|
|symbol|s0|
|ticker_trend|t7|
|trade_date|d2|
|trade_links|t6|
|trade_links_additional|f0|
|two_hundredday_moving_average|m4|
|volume|v0|
|year_high|k0|
|year_low|j0|
|year_range|w0|

###TODO:
* historical quotes

