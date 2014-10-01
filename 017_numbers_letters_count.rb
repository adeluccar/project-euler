class Numeric
  def in_words
    final_string = []
  end
  def units
    case self
    when 1 then "one"
    when 2 then "two"
    when 3 then "three"
    when 4 then "four"
    when 5 then "five"
    when 6 then "six"
    when 7 then "seven"
    when 8 then "eight"
    when 9 then "nine"
    end
  end
  def thousands
    if self / 1000 != 0 then thousands = "#{(self / 1000).units} thousand" end
    if self % 1000 != 0 then thousands << " and " end
    return thousands
  end
  def hundreds
    if self / 100 != 0 then hundreds = "#{(self / 100).units} hundred" end
    if self % 100 != 0 then hundreds << " and " end
    return hundreds
  end
end

ary = []
1.upto(1000) { |num| ary << num.in_words }
string = ary.join("")
print string.gsub("-", "").gsub(" ","").length
