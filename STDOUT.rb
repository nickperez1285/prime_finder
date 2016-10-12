class Primer
# check if number is prime 
	def is_prime(num)
		remainders = []
		(2..num).to_a.each do |divisor|
		# puts remainders of self divided by each number in range from 2 - itself
			 << (num % divisor) 
		end 
	# a prime number should have only one remainder of 0  when divided by itself  
		if remainders.count(0) > 1
			return false 
		else 
			return true 
		end 
	end 

# creates array of first n prime numbers 
	def prime_set(n)
		primes_arr =[]
		i = 1
		# keep inserting prime numbers into array until its length is equal to 'n'
		until primes_arr.count == n
			if is_prime(i) == true 
				primes_arr << i 
			end 
			i+=1
		end 
		p primes_arr
	end 

# creates multiplication table using primes
	def mult(arr)
		# 1 space between every cell row added to row and column width
		width = 1+ (arr.count * arr.count).to_s.length 
		(arr).each do |x|
			(arr).each do |y|
				result =(x * y).to_s
		#  for aesthtics 
			padding = " " * (width - result.length)
			print padding + result
			end 
		print("\n")
		end
	end 
end 
# prints out multiplication table for first 'n' prime numbers, currently set to 10
# *******
n = 10
# ********
p = Primer.new
p.mult(p.prime_set(n))
