def stock_picker (prices)
	# Set default max profit to 0
	max_profit = 0
	# Set default buying price to 0 and buying index to 0
	buying_price = 0
	buying_index = 0
	# default selling price = 0 and selling index to 0
	selling_price = 0
	selling_index = 0
	# For each value in the prices array
	prices.each do |price|
		current_index = prices.index(price)
			for i in current_index ... prices.size
				# If current value minus next value is less than max profit
				if(prices[current_index]-prices[i] < max_profit)
					# max profit = current value minus next value
					max_profit = prices[current_index] - prices[i]
					#buying price = current value
					buying_price = prices[current_index]
					# buying index = current value index
					buying_index = current_index
					# selling price = next value
					selling_price = prices[i]
					# selling index = next value index
					selling_index = i
				end
			end
	end
puts "Buying price: #{buying_price} at position #{buying_index}"
puts "Selling price: #{selling_price} at position #{selling_index}"
puts "Max profit: #{max_profit * -1}"
end

puts "Enter array: "
str = gets.chomp
puts str.class
arr = str.split(/,/).map(&:to_i)
puts arr.class
puts arr.size
puts arr.inspect
stock_picker(arr)
