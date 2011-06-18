package main

import (
  "fmt"
  "encoding/line"
  "os"
  "strings"
  "strconv"
)

func main() {
  reader := line.NewReader(os.Stdin, 4096)
  for {
    line, _, _ := reader.ReadLine()
    if line == nil { break }
    str := string(line[:])
    fields := strings.Split(str, ",", -1)
    for i := 0; i < len(fields); i++ {
      val, _ := strconv.Atoi(fields[i])
      fields[i] = strconv.Itoa(val * val)
    }
    fmt.Println(strings.Join(fields, ","))
  }
} 