require 'rubygems'
require 'ccsv'
 
Ccsv.foreach($stdin) do |values|
 puts values[0]
end