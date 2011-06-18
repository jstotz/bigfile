require 'rubygems'
require 'excelsior'

Excelsior::Reader.rows($stdin) do |row|
  puts row.map {|i| i.to_i ** 2}.join(',')
end