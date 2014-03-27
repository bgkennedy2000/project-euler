#The prime factors of 13195 are 5, 7, 13 and 29
#What is the largest prime factor of the number 600851475143 ?

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

# places all of the odd factors of number into an array

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

	
prime_factors(600851475143)
#factors_array.each { |x| hash[x] = x.prime if x.prime == true}
#puts hash
