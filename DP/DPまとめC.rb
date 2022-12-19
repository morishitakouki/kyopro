N = gets.chomp.to_i
A = N.times.map { gets.chomp.split().map(&:to_i) }

# DP[i][j]で、i回目にj(0番目,1番目,2番目)を選ぶ時の最大値を選択していき、
# DP[N-1][0] DP[N-1][1] DP[N-1][2] の最大値が解答となる

dp = Array.new(N) { Array.new(3,Float::INFINITY) }

dp[0][0], dp[0][1] , dp[0][2] = A[0]

(1..N-1).each do |n|
  dp[n][0] = [dp[n-1][1],dp[n-1][2]].max + A[n][0]
  dp[n][1] = [dp[n-1][0],dp[n-1][2]].max + A[n][1]
  dp[n][2] = [dp[n-1][0],dp[n-1][1]].max + A[n][2]
end

puts dp[N-1].max
