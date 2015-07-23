def stock_picker(prices)
  max_so_far = max_ending_here = 0
  buy_sell = [0,0]
  prices.each_with_index do |p, i|
    if i != prices.length - 1
      old_max_so_far = max_so_far
      old_max_ending_here = max_ending_here
      max_ending_here = [0, prices[i+1] - prices[i] + max_ending_here].max 
      max_so_far = [max_so_far, max_ending_here].max
      if max_so_far != old_max_so_far
        array[1] = i + 1
        if old_max_ending_here == 0
          buy_sell = [i, i + 1]
        end
      end
    end
  end
  return buy_sell
end

puts "Enter list of stock prices separated by a comma:"
prices = gets.chomp.split(",").map! { |s| s.to_i }
puts stock_picker(prices).to_s