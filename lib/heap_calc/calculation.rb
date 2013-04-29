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

    def self.breakdown_diff(previous, current)
      current.each_with_object({}) do |(type, count), diff_hash|
        diff = count - (previous[type] || 0)
        diff_hash[type] = diff if diff > 0
      end
    end

  end
end
