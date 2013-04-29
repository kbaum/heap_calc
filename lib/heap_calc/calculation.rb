module HeapCalc
  class Calculation
    def object_breakdown
      GC.start
      counts = Hash.new{ 0 }
      ObjectSpace.each_object do |o|
        counts[o.class] += 1
      end
      counts
    end
  end
end
