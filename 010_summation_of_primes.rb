# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.
require 'benchmark'
# require 'prime'

# time = Benchmark.realtime do
#   p Prime.take_while { |p| p < 2_000_000 }.inject(:+)
# end
# puts "Time elapsed #{time} seconds" # 17 seconds

def eratostenes_sum(n)
  sieve = Array(2..n)
  primes = [1]

  until primes.last**2 > n
    primes << sieve.shift
    sieve.delete_if { |x| x % primes.last == 0 }
  end

  primes.shift # removes the starting 1
  primes.concat(sieve)
end

time = Benchmark.realtime do
  p  eratostenes_sum(2_000_000).inject(:+)
end
puts "Time elapsed #{time} seconds" # 20 seconds