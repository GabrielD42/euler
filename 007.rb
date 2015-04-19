# Euler Project Problem 7: 10001st prime
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?

def find_n_primes(n)
  primes = [2, 3]
  current = 5
  loop do
    primes << current if primes.all? { |p| current % p != 0 }
    return primes if primes.length == n
    current += 2
  end
end

def find_nth_prime(n)
  find_n_primes(n).last
end

puts find_nth_prime(10_001)
