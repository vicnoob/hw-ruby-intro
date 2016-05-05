# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
	sum = 0
	arr.each do |x|
	sum+= x
	end
	return sum		
end

def max_2_sum(arr)
  # YOUR CODE HERE
  sum = 0
  if arr.length > 1
  	arr.sort!.reverse!
  	sum = arr[0] + arr[1]
  elsif arr.length == 1
	sum = arr[0]
  end
  return sum
end

def sum_to_n?(arr, n)
	if arr.empty? 
		return false
	else
	(arr.empty? && n.zero?) || arr.permutation(2).any? { |a, b| a + b == n }
end
end

# # Part 2

def hello(name)
  # YOUR CODE HERE
  #return "Hello,+ #(name)" 
  return "Hello, #{name}"
end

def starts_with_consonant?(s)
  # YOUR CODE HERE

  if !s.start_with?('a','e','i','o','u','A','E','I','O','U') && !s.empty? && !s.start_with?("!","@","#",'$','%','^','&','*','(',')','-','_','=','+')
  	return true
  else
  	return false	
  end
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  check = s%4
  if check == 0
  	return true
  else
  	return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn, :price
	
	def initialize(isbn, price)
		raise ArgumentError if isbn.empty? || price <= 0
		@isbn = isbn
		@price = price
	end

	def set_isbn(isbn)
		@isbn = isbn
	end

	def set_price(price)
		@price = price
	end

	def get_isbn()
		return @isbn
	end
	def get_price()
		return @price
	end

	def price_as_string
		"$%.2f" % @price
	end
end
