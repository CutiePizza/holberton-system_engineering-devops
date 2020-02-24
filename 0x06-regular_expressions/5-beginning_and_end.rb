#!/usr/bin/env ruby
regex = /^h.n$/
input = ARGV[0].scan(regex)
for i in input do
	print(i)
end
print("\n")
