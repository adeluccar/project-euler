class Numeric
  def digital_root()
    if self < 9
      self
    else
      self.to_s.split("").map {|n| n.to_i}.reduce(:+).digital_root
    end
  end
end
