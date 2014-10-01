names = File.read("p022_names.txt").tr('"','').split(',').sort
p names.each_with_index.map { |name, index|
  index = index+1
  name_value = name.split('').map { |char| char.ord-'A'.ord+1 }.reduce(:+)
  index * name_value
}.reduce(:+)
