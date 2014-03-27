# Project Euler question 3
#The prime factors of 13195 are 5, 7, 13 and 29
#What is the largest prime factor of the number 600851475143 ?



 # test if any integer is a prime and if it is, returns: true

class Integer
	def prime

		array = [ ]
		(1..self/2).each { |x| array.push(self % x != 0) }
		array.shift
		if array.include?(false)
			false
		else
			true
		end
	end
end

#creates an array of factors of the number n

def factors(n)
	factors = (1..n).to_a.delete_if { |x| n % x != 0 }
end


 # This was my first solution.  Create an array of the factors of a number and then test if each integer in the array is prime.  
 # Return prime integers in a hash.    
 # This works for smaller numbers, but my computer blows up if its a large number.

puts " "
puts "Output for my first try (the one that blows up my computer with big numbers."
puts "These are the prime factors of 13,195"
factors_array = factors(13195)
solution = { }
factors_array.each { |x| 
	solution[x] = x.prime if x.prime == true }
puts solution
	
# This was my ultimate solution.  Repeatedly divides numbers down into its most base level factors, which is turns out, are all prime numbers.  

def prime_factors(n)
	prime_factors = [ ]
	i = 2
	a = n 
	while i < a  	
		while a % i == 0 do
			a = a / i
			prime_factors.push(i)
		end
		i = i + 1
	end
	prime_factors.push(a)
	puts prime_factors.join(" ")
end

puts ""
puts "My final solution.  These are the prime factors of 600,851,475,143"
prime_factors(600851475143)
puts " "
