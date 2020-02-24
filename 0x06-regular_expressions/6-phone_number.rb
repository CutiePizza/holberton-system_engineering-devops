#!/usr/bin/env ruby
regex = /^[0-9]+$/
input = ARGV[0].scan(regex)
for i in input do
	print(i)
end
print("\n")
