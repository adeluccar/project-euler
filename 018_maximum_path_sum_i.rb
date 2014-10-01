triangle = [[3, 0], [7, 4], [2, 4, 6], [8, 5, 9, 3]]
num = []
counter = 0

triangle.each do |element|
  if element[counter] > element[counter + 1]
    num << element[counter]
  else
    num << element[counter + 1]
    counter += 1
  end
end

p num.reduce(:+)
