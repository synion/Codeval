require 'benchmark'

ary = []
1000.times { 
  ary << {:bar => rand(1000)} 
}
ar2 = []
  1000.times {
    ar2 << rand(1000)
  }

n = 500
Benchmark.bm(20) do |x|
  x.report("sort")               { n.times { ary.sort{ |a,b| b[:bar] <=> a[:bar] } } }
  x.report("sort reverse")       { n.times { ary.sort{ |a,b| a[:bar] <=> b[:bar] }.reverse } }
  x.report("sort_by -a[:bar]")   { n.times { ary.sort_by{ |a| -a[:bar] } } }
  x.report("sort_by a[:bar]*-1") { n.times { ary.sort_by{ |a| a[:bar]*-1 } } }
  x.report("sort_by.reverse!")   { n.times { ary.sort_by{ |a| a[:bar] }.reverse } }
  x.report("sort.reverse")       { n.times  {ar2.sort.reverse}}
  x.report("reverse")       { n.times  {ar2.reverse}}
end

