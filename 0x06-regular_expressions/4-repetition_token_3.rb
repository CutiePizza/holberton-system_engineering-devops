#!/usr/bin/env ruby
regex = /hb{0,1}t+n/
input = ARGV[0].scan(regex)
for i in input do
	print(i)
end
print("\n")
