order_items = [100.0, 112.2, 301.1]
discounts = [10.0, 0.0, 0.0]

def calculate_sum_of_order(order_items,discounts)
	total_sum = 0
	if order_items.length == discounts.length
		for i in 0..order_items.length-1
			discount = discounts[i]/100
			prise_with_discount = order_items[i] - order_items[i]*discount
			total_sum += prise_with_discount
		end
		return total_sum
	else
		raise 'Arrays have not equal length'
	end
end

puts "Total sum: " + calculate_sum_of_order(order_items,discounts).to_s
