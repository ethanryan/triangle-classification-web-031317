class Triangle

  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  ###found this online:::
  # def triangle(a, b, c)
  #   if ((a == b) && (a == c) && (b == c))
  #     return :equilateral
  #   elsif ((a == b) || (a == c) || (b == c))
  #     return :isosceles
  #   else
  #     return :scalene
  #   end
  # end

  def kind

    #got some help for the first if..elsif below from a fellow classmate's github:

    if side1 + side2 <= side3 || side1 + side3 <= side2 || side2 + side3 <= side1
      raise TriangleError

    elsif side1 < 0.0 || side2 < 0.0 || side3 < 0.0
      raise TriangleError

    elsif ((side1 == side2) && (side1 == side3) && (side2 == side3))
      :equilateral
    elsif ((side1 == side2) || (side1 == side3) || (side2 == side3))
      :isosceles
    elsif (side1 != side2) && (side1 != side3)
      :scalene
    end
  end #end method

end #end Triangle class



class TriangleError < StandardError

  def triangle_inequality_principle
    "The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. Also, each side must be greater than zero."
  end

end #end TriangleError class

# HINT
# The sum of the lengths of any two sides of a triangle
# always exceeds the length of the third side.
# This is a principle known as the triangle inequality.
# Further, each side must be larger than 0.
