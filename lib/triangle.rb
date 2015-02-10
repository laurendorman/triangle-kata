# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb

class Triangle

attr_reader :a
attr_reader :b
attr_reader :c

# What is a triangle?

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    # a, b, c = [a, b, c].sort
    raise TriangleError if a <= 0 or a + b <= c
  end

# What type of triangles exist?

  def triangle_type
    return :equilateral if a==b && a==c
    return :isosceles if a==b && a!=c || a==c && a!=b || b==c && b!=a
    return :scalene if a!=b && b!=c
  end

end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end