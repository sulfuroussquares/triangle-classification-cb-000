class Triangle

  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
#    if (side1 < 0 || side2 < 0 || side3 < 0)
#      begin
#        raise TriangleError
#        rescue TriangleError => error
#          puts error.message
#        end
#        end #end if
  end

  def kind
    if (@side1 == 0 || @side2 == 0 || @side3 == 0)
      begin
        raise Triangle.TriangleError
      rescue Triangle.TriangleError => error
          puts error.message
        end #end begin
  elsif @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif (@side1 != @side2 && @side2 == @side3) ||
      (@side1 == @side2 && @side2 != @side3) ||
      (@side1 == @side3 && @side1 != @side2)
      :isosceles
    elsif (@side1 != @side2 && @side2 != @side3)
      :scalene
    else
    end # end if

  end

  class TriangleError < StandardError
  end #end class TriangleError
end
