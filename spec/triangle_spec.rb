require('rspec')
require('triangle')

describe(Triangle) do
  describe("#triangle_type") do
    it("returns 'This is not a triangle.' when sides do not equal triangle") do
      test_triangle = Triangle.new(10, 4, 3)
      expect(test_triangle.triangle_type()).to(eq('This is not a triangle.'))
    end

    it("returns 'equilateral triangle' when all sides are equal") do
      test_triangle = Triangle.new(5, 5, 5)
      expect(test_triangle.triangle_type()).to(eq('equilateral triangle'))
    end

    it ("returns 'isosceles triangle' when two sides are equal") do
      test_triangle = Triangle.new(5, 5, 10)
      expect(test_triangle.triangle_type()).to(eq('isosceles triangle'))
    end

    it ("returns 'scalene triangle' when no sides are equal") do
      test_triangle = Triangle.new(3, 4, 5)
      expect(test_triangle.triangle_type()).to(eq('scalene triangle'))
    end
  end
end
