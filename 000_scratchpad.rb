# 20.times {|x| puts "#{x}: #{x.to_s(2)}"}
# 20.times {puts rand(99)}

require "benchmark"

# p 43.to_s(2)
# p "11111".to_i(2)


# test whether a number is odd with bitwise operator
# the & operation checks whether the LSB least significant bit (the one most to the left) is set (i.e. has a 1 value). All odd numbers have the LSB set to 1
def bit_odd?(n)
  n&1 == 1
end

def power_of_two?(x)
  x > 0 ? x&(x-1) == 0 : false # note the & bitwise AND operation.
end


# time = Benchmark.realtime do # ruby's odd? predicate - faster
#   3.odd?
# end
# puts "Time elapsed #{time*1000} miliseconds"

# time = Benchmark.realtime do # custom bit operation - slower
#   bit_odd? 3
# end
# puts "Time elapsed #{time*1000} miliseconds"

def golden_ratio
  (1 + Math.sqrt(5))/2
end