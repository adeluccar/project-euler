# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91  99.

# Find the largest palindrome made from the product of two 3-digit numbers.

# My solution

def is_palindrome?(x)
  x.to_s == x.to_s.reverse ? true : false
end

x = 999
y = x

while true
  z = x * y
    if is_palindrome?(z)
    puts z
    break
  end
  y -= 1
  if y < 900
    x -= 1
    y = x
  end
end


# ----- ----- ----- ----- ----- ----- #

# a cool recursive solution I found online
# 
# def palindrome(x, y = x)

#   z = x * y
#   return z if z.to_s == z.to_s.reverse

#   if y > 900
#     y -= 1
#   else
#     x -= 1
#     y = x
#   end

#   palindrome(x, y)

# end

# puts palindrome(999)

# ----- ----- ----- ----- ----- ----- #

# Also found online.
# A bit slow.

# arr=[]
# (100..999).each{|i|(100..999).each{|j|arr<<i*j}}
# p arr.uniq!.find_all{|x|x.to_s==x.to_s.reverse}.max