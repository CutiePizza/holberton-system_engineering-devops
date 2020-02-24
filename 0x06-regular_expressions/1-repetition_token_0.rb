#!/usr/bin/env ruby
regex = /hbt{2,5}n/
input = ARGV[0].scan(regex)
for i in input do
	puts(i)
end
