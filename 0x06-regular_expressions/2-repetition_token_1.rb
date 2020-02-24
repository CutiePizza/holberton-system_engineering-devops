#!/usr/bin/env ruby
regex = /hb{0,1}t{1}n/
input = ARGV[0].scan(regex)
for i in input do
	puts(i)
end
