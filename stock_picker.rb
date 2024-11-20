def stock_picker(days)
  difference = 0
  best_trading_prices = []
  
  number_of_days = days.length
  if days.index(days.min) < days.index(days.max)
    best_trading_prices = [days.index(days.min), days.index(days.max)]
  else
    # iterate over array of days
    0.upto(number_of_days - 1) do |day|
      #do second iteration and compare prices to the right
      (number_of_days - day).times do |price|
        if days[day + price] - days[day] > difference
          difference = days[day + price] - days[day]
          best_trading_prices = [day, day + price]
          p "#{difference} => #{best_trading_prices}"
        end
      end
    end
  end
  best_trading_prices
end
