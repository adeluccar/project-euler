class Numeric
  def in_strings
    self
  end
end

ary = []
1.upto(1000) { |num| ary << num.in_strings }
