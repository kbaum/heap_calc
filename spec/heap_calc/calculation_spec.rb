require 'minitest_helper'

describe HeapCalc::Calculation do

  class HeapCalc::SomeObject
  end

  before do
    @calculation = HeapCalc::Calculation.new
  end

  describe '#object_breakdown'  do

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

  describe 'object_breakdown diff' do

    it 'SomeObject grows from 0 to 3' do
      breakdown1 = @calculation.object_breakdown
      objects = 3.times.collect{ HeapCalc::SomeObject.new }
      breakdown2 = @calculation.object_breakdown
      diff = HeapCalc::Calculation.breakdown_diff(breakdown1, breakdown2)
      diff[HeapCalc::SomeObject].must_equal 3
    end

    it 'SomeObject grows from 1 to 2' do
      some_object1 = HeapCalc::SomeObject.new
      breakdown1 = @calculation.object_breakdown
      some_object2 = HeapCalc::SomeObject.new
      breakdown2 = @calculation.object_breakdown
      diff = HeapCalc::Calculation.breakdown_diff(breakdown1, breakdown2)
      diff[HeapCalc::SomeObject].must_equal 1
    end




  end



end
