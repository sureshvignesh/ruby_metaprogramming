require 'pry'

$case = false

class MyClass < Object

  puts "I'm inside My class"

  def special_method
    puts "I'm inside special method"
  end if $case

end

true_case = MyClass.new #output -> I'm inside My class
true_case.special_method #Error -> undefined method `special_method' for #<MyClass:0x000000019c3d98> (NoMethodError)
