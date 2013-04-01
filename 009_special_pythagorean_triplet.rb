require 'benchmark'

class Integer # finds factors of a number
  def factors
    (1..self).select { |n| (self % n).zero? }
  end
end

def triplet?(a, b, c)
    a**2 + b**2 == c**2
end

def triplet_from(x) # FAIL
  #this formula doesn't find the triplet that yields a sum of 1000
  # x = 15 yields 992
  # x = 16 yields 1122
  a = ((2*x)+1)
  b = ((2*x)*(x+1))
  c = (((2*x)*(x+1))+1)
  puts "#{a} + #{b} + #{c} = #{a+b+c}"
end

def triplets_from_even(a) # FAIL
  #this formula doesn't find the triplet that yields a sum of 1000
  # a = 42 yields 924
  # a = 44 yields 1012
  b = ((a**2) / 4) - 1
  c = b + 2
  puts "#{a} + #{b} + #{c} = #{a+b+c}"
end

def triplets_from_even_alternate(m) # FAIL
  #this formula doesn't find the triplet that yields a sum of 1000
  # m = 42 yields 924
  # m = 44 yields 1012
  a = m*2
  b = (m**2)-1
  c = (m**2)+1
  puts "#{a} + #{b} + #{c} = #{a+b+c}"
end

def triplet_from_n(n) # FAIL
  #this formula doesn't find the triplet that yields a sum of 1000
  # n = 16 yields 992
  # n = 17 yields 1122
  m = n - 1
  a = (n**2) - (m**2)
  b = 2*n*m
  c = (n**2) + (m**2)
  puts "m is #{m} and n is #{n}"
  puts "#{a} + #{b} + #{c} = #{a+b+c}"
  puts
end

def triplet_first(n) # FAIL
  #this formula doesn't find the triplet that yields a sum of 1000
  # n = 83 yields 996
  # n = 84 yields 1008
  a = (3*n)
  b = (4*n)
  c = (5*n)
  puts "n is #{n}"
  puts "#{a} + #{b} + #{c} = #{a+b+c}"
  puts
end

def triplet_second(n) # FAIL
  #this formula doesn't find the triplet that yields a sum of 1000
  # n = 33 yields 990
  # n = 34 yields 1020
  a = (5*n)
  b = (12*n)
  c = (13*n)
  puts "n is #{n}"
  puts "#{a} + #{b} + #{c} = #{a+b+c}"
  puts
end

def triplet_third(n) # FAIL
  #this formula doesn't find the triplet that yields a sum of 1000
  # n = 11 yields 990
  # n = 12 yields 1080
  a = (9*n)
  b = (40*n)
  c = (41*n)
  puts "n is #{n}"
  puts "#{a} + #{b} + #{c} = #{a+b+c}"
  puts
end

# http://en.wikipedia org/wiki/Formulas_for_generating_Pythagorean_triples#Dickson.27s_method

def dickson(r) # Success!
  p = (r**2)/2
  ary = p.factors

  until ary.length == 0 
    s = ary.shift
    t = ary.pop
    x = r + s
    y = r + t
    z = r + s + t
    sum = x + y + z
    if sum == 1000
      puts "#{x} + #{y} + #{z} = #{sum}"
      puts "#{x} . #{y} . #{z} = #{x*y*z}"
      puts "The r value used was #{r}."
      puts
    end
  end
end

# dickson 150 # <= actual solution

time = Benchmark.realtime do # the brute force code I ran to obtain the solution
  (2..200).step(2) do |x| 
    dickson(x)
  end
end
puts "Time elapsed #{time} seconds"


# By Pier Pascal on 2004 # this was elegant
# Without programming:
# a= 2mn; b= m^2 -n^2; c= m^2 + n^2;
# a + b + c = 1000;

# 2mn + (m^2 -n^2) + (m^2 + n^2) = 1000;
# 2mn + 2m^2 = 1000;
# 2m(m+n) = 1000;
# m(m+n) = 500;

# m>n;

# m= 20; n= 5;

# a= 200; b= 375; c= 425;


# time = Benchmark.realtime do
# # by Ryachu 2013
# 1000.times { |c|
#   1000.times { |a|
#     b = 1000 - c - a
#     abort "#{a} + #{b} + #{c}  Ans: #{a * b * c}" if a**a + b**b == c**c
#   }
# }
# end
# puts "Time elapsed #{time} seconds"
