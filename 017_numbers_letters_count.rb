class Numeric
  def in_words
    final_string = []
  end
  def units
    case self
    when 1 then "One"
    when 2 then "Two"
    when 3 then "Three"
    when 4 then "Four"
    when 5 then "Five"
    when 6 then "Six"
    when 7 then "Seven"
    when 8 then "Eight"
    when 9 then "Nine"
    end
  end
  def thousands
    if self / 1000 == 0 then return nil end
    if self / 1000 != 0 then thousands = "#{(self / 1000).units} Thousand" end
    if self % 1000 != 0 then thousands << " and " end
    return thousands
  end
end

ary = []
1.upto(1000) { |num| ary << num.in_words }
string = ary.join("")
print string.gsub("-", "").gsub(" ","").length
