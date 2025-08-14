#let avg(arr) = arr.sum() / arr.len()
#let var(arr) = {
  let len = arr.len()
  let mean = arr.sum() / len
  arr.map(x => calc.pow(x - mean, 2)).sum() / (len - 1)
}
#let std(arr) = calc.sqrt(var(arr))
#let sem(arr) = std(arr) / calc.sqrt(arr.len())
#let stats(arr) = (
  "avg": avg(arr),
  "var": var(arr),
  "std": std(arr),
  "sem": sem(arr),
)