# benchmark.rb
# Using Ruby's built in benchmark,
# test multiple functions for best execution speed
# Add as many x.reports as needed
# Thanks to http://www.skorks.com/

require "benchmark"
 
Benchmark.bm(7) do |x|
  x.report(".each_char:")   { (1..10000).each { |i| i.to_s.each_char.to_a } }
  x.report(".bytes:") 		{ (1..10000).each { |i| i.to_s.bytes.to_a }}
  x.report(".split:") 		{ (1..10000).each { |i| i.to_s.split(//) }}
end