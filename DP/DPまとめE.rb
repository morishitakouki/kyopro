N,W = gets.chomp.split.map(&:to_i)
w = N.times.map { gets.chomp.split().map(&:to_i) }

# dp[i][j]で、i番目までの選択肢のうち、重さがj以下の際の最大値

dp = Array.new(N) { Array.new(W,0) }

dp[0][0] = 0

i = 0
j = 0

while i < N
  while j <= W
    p "ねこiが#{i}jが#{j}"
    # # i = 0の時のものを設定
    # if i == 0
    #   if j >= w[0][0]
    #     dp[0][j] = w[0][1]
    #   end
    #   j += 1
    #   next
    # end
    # # iとi-1で、i-1からiの時の重さを引いて、価値を比較する
    # dp[i][j] = j-w[i][0] >= 0 ? [(dp[i-1][j-w[i][0]] + w[i][1]),dp[i-1][j]].max : dp[i-1][j]
    j += 1
  end
  p "いぬiが#{i}jが#{j}"
  i += 1
  j = 0
end

p dp.last.last
