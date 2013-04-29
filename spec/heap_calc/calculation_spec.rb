require 'minitest_helper'

describe HeapCalc::Calculation do

  class HeapCalc::SomeObject
  end

  before do
    @calculation = HeapCalc::Calculation.new
  end

  it 'breaks down the objects' do
    @calculation.object_breakdown.wont_be_empty
  end

  describe '2 instances of SomeOjbect' do

    it 'counts 2 instances of HeapCalc::SomeObject' do
      objects = 2.times.collect{ HeapCalc::SomeObject.new }
      @calculation.object_breakdown[HeapCalc::SomeObject].must_equal 2
    end

  end

  describe '3 instances of SomeOjbect' do

    it 'counts 2 instances of HeapCalc::SomeObject' do
      objects = 3.times.collect{ HeapCalc::SomeObject.new }
      @calculation.object_breakdown[HeapCalc::SomeObject].must_equal 3
    end

  end


end
