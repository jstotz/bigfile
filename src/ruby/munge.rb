while gets do
  puts $_.split(',').map {|i| i.to_i ** 2}.join(',')
end