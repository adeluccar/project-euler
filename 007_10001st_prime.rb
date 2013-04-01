# require 'prime'
require 'benchmark'

# time = Benchmark.realtime do
#   p Prime.take(10001).pop
# end
# puts "Time elapsed #{time} seconds" # 0.4 seconds

# For later perusal
# Prime.take(10) #=> [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
# Prime.take_while {|p| p < 10 } #=> [2, 3, 5, 7]
# Prime.prime?(19) #=> true

# 100.prime_division # => [[2, 2], [5, 2]]
# The prime devision returns nice pairs - the prime and how often its a divisor of the number.
# For example: 4 is 2 * 2 and would return [[2,2]], wheras 12 is 2 * 2 * 3 and returns [[2, 2], [3, 1]]

time = Benchmark.realtime do
  def eratostenes(n)
    sieve = Array(2..n)
    primes = [1]

    until primes.last**2 > n
      primes << sieve.shift
      sieve.delete_if { |x| x % primes.last == 0 }
    end

    primes.shift # removes the starting 1
    primes.concat(sieve)
  end

  sieve = eratostenes(200_000)
  p sieve[10_000]
end
puts "Time elapsed #{time} seconds" # 1.1 seconds