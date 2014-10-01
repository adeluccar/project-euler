class String
  def value
    case self
    when "A" then 1
    when "B" then 2
    when "C" then 3
    when "D" then 4
    when "E" then 5
    when "F" then 6
    when "G" then 7
    when "H" then 8
    when "I" then 9
    when "J" then 10
    when "K" then 11
    when "L" then 12
    when "M" then 13
    when "N" then 14
    when "O" then 15
    when "P" then 16
    when "Q" then 17
    when "R" then 18
    when "S" then 19
    when "T" then 20
    when "U" then 21
    when "V" then 22
    when "W" then 23
    when "X" then 24
    when "Y" then 25
    when "Z" then 26
    end 
  end

  def word_value
    self.tr('"','').split("").map {|letter| letter.value}.reduce {|sum, letter_values| sum + letter_values}
  end
end

file = File.read('p022_names.txt')
contents = file.split(",")
contents.sort!
sum = []
contents.each_with_index {|name, index| sum << name.word_value * (index + 1)}
p sum.reduce(:+)

