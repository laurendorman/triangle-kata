require 'spec_helper'
require_relative '../lib/triangle'

describe Triangle do
	it 'is illegal triangle' do
    expect{Triangle.new(0,0,0)}.to raise_error(Triangle::TriangleError)
  end
  it 'is equilateral triangle' do
    expect(Triangle.new(2,2,2).triangle_type).to be == :equilateral
  end
  it 'is isosceles triangle' do
    expect(Triangle.new(3,4,4).triangle_type).to be == :isosceles
  end
  it 'is scalene triangle' do
    expect(Triangle.new(3,4,5).triangle_type).to be == :scalene
  end
end