#!/usr/bin/env ruby
regex = /[A-Z]/
input = ARGV[0].scan(regex)
for i in input do
	print(i)
end
print("\n")
