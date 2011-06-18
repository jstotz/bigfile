buffer = []

while char = $stdin.getc
  if char == ',' || char == "\n"
    print "#{buffer.join.to_i ** 2}#{char}"
    buffer = []
  else
    buffer << char
  end
end