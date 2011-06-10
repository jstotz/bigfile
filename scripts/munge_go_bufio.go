package main

import (
  "fmt"
  "bufio"
  "os"
  "strings"
  "strconv"
)

func main() {
  reader := bufio.NewReader(os.Stdin)
  for {
    field, _  := reader.ReadString(",")
    if field == nil { break }
    str := string(line[:])
    fields := strings.Split(str, ",", -1)
    for i := 0; i < len(fields); i++ {
      val, _ := strconv.Atoi(fields[i])
      fields[i] = strconv.Itoa(val * val)
    }
    fmt.Println(strings.Join(fields, ","))
  }
}