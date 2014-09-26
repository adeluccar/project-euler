class Numeric
  def digital_root()
    if self <= 9
      self
    else
      self.to_s.split("").map {|n| n.to_i}.reduce(:+).digital_root
    end
  end
  def perfect_square?()
    last_digit = self.to_s.split("").last.to_i
    return false if last_digit == 2 || last_digit == 3 || last_digit == 7 || last_digit == 8 
    n = self.digital_root
    if n == 1 || n == 4 || n == 7 || n == 9 
      self % 4 <= 2
    else
      return false
    end
  end
end
