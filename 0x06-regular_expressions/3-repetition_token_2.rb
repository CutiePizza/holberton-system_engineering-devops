#!/usr/bin/env ruby
regex = /hb{1}t+n/
input = ARGV[0].scan(regex)
for i in input do
	puts(i)
end
