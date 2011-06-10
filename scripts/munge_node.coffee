lines = require 'lines'
sys = require 'sys'
stdin = process.stdin

stdin.setEncoding 'utf8'
lines(stdin)
stdin.on 'line', (line) -> sys.puts (i * i for i in line.split(',')).join(',')
stdin.resume()