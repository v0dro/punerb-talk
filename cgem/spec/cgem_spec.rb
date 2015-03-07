require 'cgem'

def slow_loop
  mult = 0
  500000.times do
    mult += 4*4
  end
end

describe CGem do
  it "benchmarks" do
    require 'benchmark'

    Benchmark.bm do |x|
      x.report { slow_loop }
      x.report { CGem.fast_loop }
    end
  end
end