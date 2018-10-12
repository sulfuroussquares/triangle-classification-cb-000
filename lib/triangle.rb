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
    if @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif (@side1 != @side2 && @side2 == @side3) ||
      (@side1 == @side2 && @side2 != @side3) ||
      (@side1 == @side3 && @side1 != @side2)
      :isosceles
    elsif (side1 < 0 || side2 < 0 || side3 < 0)
        begin
          raise TriangleError
          rescue TriangleError => error
            puts error.message
          end
          end #end if
    else
      :scalene
    end # end if

  end

  class TriangleError < StandardError
    def message
      "Illegal triangle property; Please check your values"
    end #end message
  end #end class TriangleError
end #end Triangle class
