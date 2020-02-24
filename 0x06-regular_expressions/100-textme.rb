#!/usr/bin/env ruby
regex = /(from:)([A-Za-z0-9]+)(...)(to:)(\+?[A-Za-z0-9]+)(...)(flags:)((-?[0|1]:?)+)/
input = ARGV[0].scan(regex)
print(input[0][1] + ", " + input[0][4] + ", " + input[0][7])
print("\n")
