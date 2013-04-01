require 'benchmark'

def factors(x)
  (1..x).select { |n| (x % n).zero? }
end

def generate_triangles(limit)
  (1..limit).inject(:+)
end

def triangle(n)
  (n*(n+1))/2
end

10_000.times do |x|
  if factors(triangle(x)).length > 500
    p triangle(x)
    break
  end
end

# time = Benchmark.realtime do
#   (1..7).each do |x|
#     tri = generate_triangles(x)
#     if factors(tri).length > 5
#       p tri
#       break
#     end
#   end
# end
# puts "Time elapsed #{time} seconds"