# Euler Project Problem 5: Smallest Multiple
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# nice version
# MONKIES! RUN!
# class Integer
#   def factorial
#     (1..self).reduce(:*) || 1
#   end
# end
# def smallest_multiple(divisors)
#   (1..(divisors.max.factorial / divisors.min.factorial)).each do |n|
#     return n if divisors.all? { |d| n % d == 0 }
#   end
# end

# overly complex (but efficient) version
def smallest_multiple(divisors)
  code = 'n = 2; n += 1 while ('
  divisors.each { |n| code += "n % #{n} != 0 || " }
  code.chomp! '|| '
  code += '); n'
  eval code
end

def smallest_multiple_of_continuous_range(max)
  smallest_multiple((max / 2).ceil..max)
end

puts smallest_multiple_of_continuous_range 20
