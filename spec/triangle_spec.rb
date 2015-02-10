require 'spec_helper'
require_relative '../lib/triangle'

describe Triangle do
	it 'is illegal triangle' do
    expect{Triangle.new(0,0,0)}.to raise_error(Triangle::TriangleError)
  end
end