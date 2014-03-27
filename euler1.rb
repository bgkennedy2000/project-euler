# If we list all the natural numbers below 10 that are 
# multiples of 3 or 5, we get 3, 5, 6 and 9. 
# The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

def sum_of_multiples(n)
	multiples = [ ]
	range = (0...n)
	range.each { |a|
		if (a % 3 == 0 or a % 5 == 0)
			multiples.push(a)
		end
	}
	sum = 0 
	multiples.each { |x| 
		sum = sum + x
	}
	# puts multiples
	puts sum
end

puts "Up to what number do you want to sum multiples of 3 and 5?"
num = gets.chomp.to_i

sum_of_multiples(num)
