class Triangle

  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @tempArray = []
    @tempArray << side1
    @tempArray << side2
    @tempArray << side3
  end

  def kind
    if @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif (@side1 != @side2 && @side2 == @side3) ||
      (@side1 == @side2 && @side2 != @side3) ||
      (@side1 == @side3 && @side1 != @side2)
      :isosceles
    else
    end # end if

  end

  class TriangleError < StandardError
    # triangle error code
  end
end
