class Triangle
  # write code here
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if @a <= 0 || @b <= 0 || @c <= 0
      raise TriangleError
    end

    if @a + @b <= @c || @a + @c <= @b || @b + @c <= @a
      raise TriangleError
    end

    if @a == @b && @b == @c
      :equilateral
    elsif @a == @b || @b == @c || @a == @c
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    # triangle error code
  end
end
