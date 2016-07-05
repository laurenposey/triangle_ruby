class Triangle
  define_method(:initialize) do |side_one, side_two, side_three|
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  define_method(:triangle_type) do
    if (@side_one + @side_two >= @side_three ) | (@side_two + @side_three < @side_one) | (@side_one + @side_three < @side_two)
      return "This is not a triangle."

    elsif (@side_one == @side_two) & (@side_two == @side_three)
      return "equilateral triangle"
    elsif (@side_one == @side_two) & (@side_three != @side_one)
      return "isosceles triangle"
    else (@side_one != @side_two) & (@side_three != @side_one)
      return "scalene triangle"
    # else
    #   return "scalene triangle"
    end
  end
end
