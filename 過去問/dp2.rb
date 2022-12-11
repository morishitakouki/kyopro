# https://qiita.com/drken/items/a5e6fe22863b7992efdb
# 問題2

N,W = gets.split.map(&:to_i)
A = N.times.map {gets.split.map(&:to_i)}

i = 0
w = 0

dp =[][]
dp[0][0] = 0

while i < N
  while w <= W
