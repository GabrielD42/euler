# Euler Project Problem 9: Special Pythagorean triplet
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def special_triangle(side_sum)
    (5..side_sum).each do |c|
        (4...c).each do |b|
            (3...b).each do |a|
                next unless a + b + c == side_sum
                next unless a**2 + b**2 == c**2
                return a, b, c
            end
        end
    end
end

def product(array)
   array.reduce(:*) 
end

puts product(special_triangle(1000))
