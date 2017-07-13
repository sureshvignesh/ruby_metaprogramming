
class TrueClass
  def swap
    return !self
  end
end

class FalseClass
  def swap
    return !self
  end
end

class Array
  def sum
    raise 'invalid data type' unless self.all? {|i| i.is_a?(Integer) }
      self.inject(0){|sum,x| sum + x }
  end
end

#Over riding default class methods
class String
  def reverse
    raise 'operation denied'
  end
end

false.swap #output -> true
true.swap #output -> false

['1', 1, 2, 3].sum #output -> invalid data type
[1,2,3].sum #output -> 6

'Hello World'.reverse #output -> operation denied
