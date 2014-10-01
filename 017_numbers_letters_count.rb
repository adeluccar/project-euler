class Numeric
  def in_words
    final_string = String.new
    transition_num = self
    # final_string = self.units if self <= 9
    final_string << self.thousands if self / 1000 != 0
    transition_num = self % 1000
    final_string << transition_num.hundreds if transition_num / 100 != 0
    transition_num = transition_num % 100
    final_string << transition_num.tens if transition_num != 0
    final_string
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
  def tens
    if self / 10 != 0 && self < 20
      tens = case self
             when 10 then "ten"
             when 11 then "eleven"
             when 12 then "twelve"
             when 13 then "thirteen"
             when 14 then "fourteen"
             when 15 then "fifteen"
             when 16 then "sixteen"
             when 17 then "seventeen"
             when 18 then "eighteen"
             when 19 then "nineteen"
             end
    end
    if self / 10 != 0 && self >= 20
      tens = case self / 10
             when 2 then "twenty"
             when 3 then "thirty"
             when 4 then "forty"
             when 5 then "fifty"
             when 6 then "sixty"
             when 7 then "seventy"
             when 8 then "eighty"
             when 9 then "ninety"
             end
      if self > 20 && self % 10 != 0
        tens << "-#{(self % 10).units}"
      end
    end
      if self < 10 && self % 10 != 0
        tens = self.units
      end
    return tens
  end
end

ary = []
1.upto(1000) { |num| ary << num.in_words }
string = ary.join("")
print string.gsub("-", "").gsub(" ","").length
