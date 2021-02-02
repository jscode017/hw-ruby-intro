# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  ret=0
  arr.each do |ele|
    ret=ret+ele
  end
  ret
end

def max_2_sum arr
  # YOUR CODE HERE
	if arr.length()<1
		return 0
	end
	if arr.length()<2
		return arr[0]
	end
 	ret=0
	max1=arr[0]
	arr.each do |ele|
		if ele>max1
			max1=ele
		end
	end
	
	cnt=0
	arr.each do |ele|
		if ele==max1
			cnt+=1
		end
	end
	if cnt>=2
		return 2*max1
	end
	
	max2=arr[0]
	if arr[0]==max1
		max2=arr[1]
	end
	arr.each do |ele|
		if ele!=max1 && ele>max2
			max2=ele
		end
	end
	
	return max1+max2
end

def sum_to_n? arr, n
  # YOUR CODE HERE
	if arr.length<=1
		return false
	end
	dic=Hash.new
	
	arr.each do |ele|
		if dic[n-ele]!=nil
			return true
		end
		dic[ele]=1
	end	
	return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
	return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
	if s.length==0 ||s==""
		return false
	end

	return 	s.match("^[a-zA-z]") && s.match("^[^aeiouAEIOU]") 
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
	
	#s.each_char do |ch|
	#	if ch!='0' && ch!='1'
	#		return false
	#	end
	#end
	if !s.match("^[01]+$") 
		return false
	end
	#1010101010100 
	#1010101010100
	if s.length==0
		return false
	end
	if s.length<=1
		return s.match("0$")
	end
	return s.match("00$")
end

# Part 3

class BookInStock
# YOUR CODE HERE
	def initialize (isbn, price)
		if isbn=="" || price<=0
			raise ArgumentError
		end
		@isbn=isbn
		@price=price
	end
	
	def isbn=(isbn)
		@isbn=isbn
	end
	def isbn
		@isbn
	end
	def price
		@price
	end
	def price=(price)
		@price=price
	end
	
	def price_as_string
		price_str=sprintf("$%0.02f",@price)
		puts price_str
		return price_str
	end
end
