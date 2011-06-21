File standardInput() foreachLine(
  line, writeln(line split(",") map(n, n asNumber pow(2)) join(","))
)