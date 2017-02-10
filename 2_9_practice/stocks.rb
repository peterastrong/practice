require "stock_quote"

puts "Choose a stock"

symbol = gets.chomp


ask = StockQuote::Stock.quote(symbol).ask
year_low = StockQuote::Stock.quote(symbol).year_low



if ask  <= year_low + 10
  puts "sell now or you will lose everything "
elsif ask  <= year_low + 20
  puts "hold a little longer, your luck will turn"
elsif ask  <= year_low + 50
  puts "things are looking ok"
else
  puts "life is good"
end 