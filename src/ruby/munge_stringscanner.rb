require 'strscan'

SCANNER = StringScanner.new ''
VAL_REGEX = /\d+/
DELIM_REGEX = /,/

while gets
  SCANNER.string = $_
  loop do
    value = SCANNER.scan(VAL_REGEX) or raise "Error. Expected a field value."
    print value.to_i ** 2
    if delim = SCANNER.scan(DELIM_REGEX)
      print delim
    else
      print "\n"
      break
    end
  end
end