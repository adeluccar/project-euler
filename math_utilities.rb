class Numeric
  def digital_root()
    if self <= 9
      self
    else
      self.to_s.split("").map {|n| n.to_i}.reduce(:+).digital_root
    end
  end
  def perfect_square?()
    n = self.digital_root
    if n == 0 || n == 1 || n == 4 || n == 7 
      n % 4 == 0 && n % 4 == 1 && n % 4 == 2 ? true : false
    else
      return false
    end
  end
end
