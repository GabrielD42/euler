# Euler Project Problem 1: Multiples of 3 and 5
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

def sum_of_multiples(range, factors)
  divisible = []
  range.each do |n|
    factors.each do |f|
      divisible << n if divisible.last != n && n % f == 0
    end
  end
  divisible.inject { |sum, n| sum + n }
end

puts sum_of_multiples 1...10, [3, 5]
puts sum_of_multiples 1...1000, [3, 5]
