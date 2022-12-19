# https://atcoder.jp/contests/dp/tasks/dp_b

# 回答例
# nで+1,+2,+3..、n+1で+1,+2,+3とどんどん上書きしていくイメージ。そのため、計算量はO(NK)回になる。
N,K = gets.chomp.split(" ").map(&:to_i)
H = gets.chomp.split(" ").map(&:to_i)

# 先に配列を準備してあげる必要がある。
dp = Array.new(N, Float::INFINITY)
dp[0] = 0

(N - 1).times do |i|
  (1..K).each do |v|
    next if i + v >= N
    dp[i + v] = [dp[i] + (H[i + v] - H[i]).abs, dp[i + v]].min
  end
end

puts dp.last

# # 自身の回答

# N,K = gets.chomp.split.map(&:to_i)

# H = gets.chomp.split.map(&:to_i)

# ans = []

# ans[0] = 0

# # 初期値のKまでの値を設定する。
# if N > K
#   # N = 1の場合のans[0]は設定したため、K-1回になる
#   1.upto((K)) do |k|
#     # 直接0から設定するコストを初期値として設定する
#     ans[k] = (H[0] - H[k]).abs
#     # 0からans[l]までを最小値で飛び、ans[l]からans[k+1]まで飛んだ際のコストを出していく
#     # K以下のため、k回繰り返す
#     (1).upto(k) do |l|
#       tmp = ans[l] + (H[l] - H[k]).abs
#       ans[k] = tmp if ans[k] > tmp
#     end
#   end

#   (K+1).upto(N-1) do |m|
#     ans[m] = ans[m-K] + (H[m-K] - H[m]).abs

#     1.upto(K) do |n|
#       tmp = ans[m-K+n] + (H[m-K+n] - H[m]).abs
#       ans[m] = tmp if ans[m] > tmp
#     end
#   end
# end

# if N <= K
#   1.upto((N-1)) do |k|
#     ans[k] = (H[0] - H[k]).abs
#     (1).upto(k) do |l|
#       tmp = ans[l] + (H[l] - H[k]).abs
#       ans[k] = tmp if ans[k] > tmp
#     end
#   end
# end

# puts ans.last
