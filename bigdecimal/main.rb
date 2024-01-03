fsum = 0
for i in (1..100000)
  fsum = fsum + 0.0001
end
puts "float: #{fsum}"

require 'bigdecimal'

sum = BigDecimal("0")
for i in (1..100000)
  sum = sum + BigDecimal("0.0001")
end
puts "BigDecimal: #{sum}" # => 0.1e1

puts "convert BigDecimal"
target = BigDecimal("1.23456")
converted_f = target.to_s("F")
puts "to_f: #{target.to_f}, to_i: #{target.to_i}, to_s: #{target.to_s}, to_s(F): #{converted_f}"

