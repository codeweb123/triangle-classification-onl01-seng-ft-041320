class Triangle
  attr_accessor :side1, :side2, :side3
  @sides = []

  def initialize(side1, side2, side3)
    @side1, @side2, @side3 = side1, side2, side3
    @sides = [side1, side2, side3]
  end

  def kind
    if(negative? == true || valid? == false) #if  the object has a negative number OR it has errors raise the Triangle Error.
      raise TriangleError
    elsif(equilateral?)
      :equilateral
    elsif(scalene?)
      :scalene
    elsif(isosceles?)
      :isosceles
    end
  end

  def negative?
    @sides.each do |length|
      if(length <= 0)
        return true
      end
  end
end

  def equilateral?
    (@side1 == @side2) && (@side1 == @side3)
  end

  def scalene?
    (@side1 != @side2) && (@side2 != @side3) && (@side3 != @side1)
  end










end
