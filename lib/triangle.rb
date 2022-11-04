require "pry"
class Triangle
  # write code here
# attr_accessor :


def initialize side1, side2, side3
@side1 = side1
@side2 = side2
@side3 = side3
end 



  def kind 
    validate_triangle
if @side1 == @side2 && @side2 == @side3
  puts "all sides equal"
  :equilateral
elsif
@side1 == @side2 || @side1 == @side3 || @side2 == @side3
puts "two sides equal"
:isosceles
else
  puts "no sides equal"
  :scalene 
end
  end
  def sides_greater_than_zero?
    [@side1, @side2, @side3].all?(&:positive?)
  end

  def valid_triangle_inequality?
    @side1 + @side2 > @side3 && @side1 + @side3 > @side2 && @side2 + @side3 > @side1
  end

  def validate_triangle
    raise TriangleError unless sides_greater_than_zero? && valid_triangle_inequality?
  end

class TriangleError < StandardError
  # triangle error code 
end

end
binding.pry