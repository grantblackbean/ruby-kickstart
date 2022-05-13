# fill out the method below, then run the tests with
#   $ rake 1:2


# Given two numbers, a and b, return half of whichever is smallest, as a float
#
# arithmetic2(1, 2)    # => 0.5
# arithmetic2(19, 10)  # => 5.0
# arithmetic2(-6, -7)  # => -3.5
require 'benchmark'

def bench(a, b)
  Benchmark.bm(20) do  |bm|
    bm.report("My Version") do
      arr = [a.to_f, b.to_f]
      arr.min / 2
    end

    bm.report("Their Version") do
      if a < b
        a / 2.0
      else
        b / 2.0
      end
    end
  end
end
bench(1, 2)
