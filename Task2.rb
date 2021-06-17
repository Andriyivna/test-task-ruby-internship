require 'matrix'

input = Matrix[
	['X','X','X'],
	['X','0',''],
	['O','O','X']
]

def search_by_row(input,size)
	for i in 0..size
		sign = input[i,0]
		for j in 1..size
			if sign != input[i,j] || sign == ''
				sign = ''
				break
			end
		end
		if sign != ''
			return sign
		end
	end
	return false
end

def search_by_column(input, size)
	for i in 0..size
		sign = input[0,i]
		for j in 1..size
			if sign != input[j,i] || sign == ''
				sign = ''
				break
			end
		end
		if sign != ''
			return sign
		end
	end
	return false
end

def search_by_main_diagonal(input, size)
	sign = input[0,0]
	for i in 1..size
		if sign != input[i,i] || sign == ''
			sign = ''
			break
		end
	end
	if sign != ''
		return sign
	end
	return false
end

def search_by_secondary_diagonal(input, size)
	sign = input[size,0]
	for i in 1..size
		if sign != input[i,size-i] || sign == ''
			sign = ''
			break
		end
	end
	if sign != ''
		return sign
	end
	return false
end

def tic_tac_toe(input)
	size = input.row_count - 1
	return search_by_row(input,size) || search_by_column(input,size) ||	search_by_main_diagonal(input, size) || search_by_secondary_diagonal(input, size) || ''
end

puts tic_tac_toe(input)
