# Euler Project Problem 4: Largest palindrome product
# A palindromic number reads the same both ways.
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome?(n)
  n = n.to_s.chars
  forwards = n.each
  backwards = n.reverse_each
  loop do
    return false unless forwards.next == backwards.next
  end
  true
end

def largest_palindrome_product(ndigits)
  largest = 0
  limit = 10**ndigits - 1
  limit.downto(0) do |a|
    limit.downto(0) do |b|
      largest = a * b if a * b > largest && palindrome?(a * b)
    end
  end
  largest
end

puts largest_palindrome_product 3
