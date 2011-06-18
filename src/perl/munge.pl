while (<STDIN>) {
  print join(',', map { $_ ** 2 } split(',', $_)), "\n";
}