for line in io.lines() do
  local buf = {}
  for val in string.gmatch(line, "%d+") do
    table.insert(buf, val * val)
  end
  io.write(table.concat(buf, ","), "\n")
end
