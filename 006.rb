# Euler Project Problem 5: Sum square difference
# The sum of the squares of the first ten natural numbers is,
# 1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)^2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def sum_of_squares(range)
  (range.map { |x| x**2 }).reduce(:+)
end

def square_of_sums(range)
  range.reduce(:+)**2
end

def sum_square_difference(range)
  square_of_sums(range) - sum_of_squares(range)
end

# test case
puts sum_square_difference 1..100
