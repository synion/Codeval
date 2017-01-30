require 'benchmark'

z = rand(1000000)
h = {}
h[z] = rand(2000000)
Benchmark.bm do |x|
 p x.report { h.has_key?(z) }
 p x.report { h.include?(z)}
 p x.report { h.key?(z)}
 p x.report { h.member?(z)}
end