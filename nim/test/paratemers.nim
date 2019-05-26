from strutils import parseInt

proc printSeq(s: seq, nprinted: int = -1) =
  var nprinted = if nprinted == -1: s.len else: min(nprinted, s.len)
  for i in 0 .. <nprinted:
    echo s[i]

var x: seq[int] = @[1, 3, 5, 7, 9, 11, 13, 15]
echo "Please type number"
var number: int = parseInt(readLine(stdin))
printSeq(x, number)
