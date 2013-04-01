# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# This is known as LCM Least Common Multiple in math

# MY FIRST SOLUTION
# BRUTE FORCE
# NOT ELEGANT
# TOOK 195.2 SECS
# FINDS VALUE BUT TAKES MORE THAN A MINUTE SO IT'S NOT VALID

# 1.upto(300_000_000) do |x|
#   if (x % 1 == 0 && 
#       x % 2 == 0 &&
#       x % 3 == 0 &&
#       x % 4 == 0 &&
#       x % 5 == 0 &&
#       x % 6 == 0 &&
#       x % 7 == 0 &&
#       x % 8 == 0 &&
#       x % 9 == 0 &&
#       x % 10 == 0 &&
#       x % 11 == 0 &&
#       x % 12 == 0 &&
#       x % 13 == 0 &&
#       x % 14 == 0 &&
#       x % 15 == 0 &&
#       x % 16 == 0 &&
#       x % 17 == 0 &&
#       x % 18 == 0 &&
#       x % 19 == 0 &&
#       x % 20 == 0)
#     puts x
#     break
#   end
# end

# ----- ----- ----- ----- ----- #

# This does not require programming at all. Compute the prime factorization of each number from 1 to 20, and multiply the greatest power of each prime together:

# 20 = 2^2 * 5
# 19 = 19
# 18 = 2 * 3^2
# 17 = 17
# 16 = 2^4
# 15 = 3 * 5
# 14 = 2 * 7
# 13 = 13
# 11 = 11

# All others are included in the previous numbers.

# ANSWER: 2^4 * 3^2 * 5 * 7 * 11 * 13 * 17 * 19 = 232 792 560

# ----- ----- ----- ----- ----- #