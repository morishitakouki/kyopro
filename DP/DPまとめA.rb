# https://atcoder.jp/contests/dp/tasks/dp_a

N = gets.chomp.to_i

H = gets.chomp.split.map(&:to_i)

i = 0

ans = []

ans[0] = 0

ans[1] = (H[0]-H[1]).abs

if N >= 3
  ans[2] = [ans[0] + (H[0] - H[2]).abs, ans[1] + (H[1] - H[2]).abs].min
end

if N >= 4
  (3..N-1).each do |n|
    ans[n] = [ans[n-2] + (H[n-2] - H[n]).abs, ans[n-1] + (H[n-1] - H[n]).abs].min
  end
end

puts ans[N-1]
