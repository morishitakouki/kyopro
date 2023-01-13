# DPまとめコンテスト
# A
# https://atcoder.jp/contests/dp/tasks/dp_a
N = gets.chomp.to_i
h = gets.chomp.split.map(&:to_i)

tmp = []

# tmp[0]が足場2のコスト
tmp[0] = (h[0]-h[1]).abs
# tmp[1]が足場3のコスト
tmp[1] = [tmp[0]+(h[1]-h[2]).abs, (h[0]-h[2]).abs].min if N >=3

if N>= 4
  i = 1
  # tmp[2](足場が4)以降について設定していく。
  while i <= N-3
    tmp[i+1] = [tmp[i] +(h[i+1]-h[i+2]).abs,tmp[i-1]+(h[i]-h[i+2]).abs].min
    i += 1
  end
end

puts tmp[N-2]
