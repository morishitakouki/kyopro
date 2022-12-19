# https://atcoder.jp/contests/dp/tasks/dp_a

# 解答案　
n = gets.to_i
h = gets.chomp.split.map(&:to_i)

d = Array.new(n, 10 ** 4 + 1)
d[0] = 0
d[1] = (h[0] - h[1]).abs

2.upto(n-1) do |i|
  d[i] = [d[i-1] + (h[i-1] - h[i]).abs, d[i-2] + (h[i-2] - h[i]).abs].min
end
puts d[n-1]

# 自身の回答

# N = gets.chomp.to_i

# H = gets.chomp.split.map(&:to_i)

# i = 0

# ans = []

# ans[0] = 0

# ans[1] = (H[0]-H[1]).abs

# if N >= 3
#   ans[2] = [ans[0] + (H[0] - H[2]).abs, ans[1] + (H[1] - H[2]).abs].min
# end

# if N >= 4
#   (3..N-1).each do |n|
#     ans[n] = [ans[n-2] + (H[n-2] - H[n]).abs, ans[n-1] + (H[n-1] - H[n]).abs].min
#   end
# end

# puts ans[N-1]
