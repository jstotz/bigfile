VAL_REGEX ||= /\d+/

while gets
  puts $_.scan(VAL_REGEX).map {|i| i.to_i ** 2}.join(',')
end