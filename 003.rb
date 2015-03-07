# Euler Project Problem 3: Largest prime factor
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600_851_475_143?

# # interesting but failed attempt (too slow)
# outputs progress if true for slow runs
# $debug = true
# # returns an array of prime numbers within the range provided.
# # implemented using the Sieve of Erastosthenes.
# def primes(range)
#   # the index is the number and the value indicates
#   # if it is thought to be prime
#   # all numbers are prime until proven guilty
#   puts "Initializing test set:" if $debug
#   numbers = Array.new range.max, true
#   numbers[0] = numbers[1] = false
#   puts "Eliminating primes:" if $debug
#   numbers.each_with_index do |is_prime, divisor|
#     # if this number isn't prime, no need to analize
#     next unless is_prime
#     # jump through array by steps of this number,
#     # starting at the next value
#     ((divisor * 2)..range.max).step(divisor) do |i|
#       # since all these numbers are multiples of
#       # divisor, they are not prime
#       numbers[i] = false
#     end
#   end
#   prime_array = []
#   puts "Generating primes:" if $debug
#   # add all the prime numbers to the array
#   numbers.each_with_index do |is_prime, index|
#     prime_array << index if is_prime
#   end
#   puts
#   prime_array
# end

# # returns the largest prime factor of
# # the provided number
# def largest_prime_factor(number)
#   # get all prime numbers smaller than this number
#   possibilities = primes(2...number)
#   # test the posibilities
#   puts "Testing possibilities:"
#   possibilities.reverse_each do |possibility|
#     return possibility if number % possibility == 0
#   end
#   # 1 is always a divisor
#   1
# end

# thanks to jackson
def largest_prime_factor(number)
  current = 2
  while current < number
    if number % current == 0
      number /= current
    else
      current += 1
    end
  end
  number
end

# puts largest_prime_factor(13195)
puts largest_prime_factor(600_851_475_143)
