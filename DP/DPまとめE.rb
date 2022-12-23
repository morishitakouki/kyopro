N,W = gets.chomp.split.map(&:to_i)
w = N.times.map { gets.chomp.split().map(&:to_i) }



# Nと、価値の最大値 10の3乗×N(10の2乗)
dp = Array.new(100001,10**15)
dp[0] = 0

# 添字が価値、値が重さの最小値を表していて、頭から選択肢を増やしていき、上書きしていく
w.each do |x,y|
  (100001 - 1).downto(y).each {|i| dp[i] = [dp[i] , dp[i - y] + x ].min}
end

ans = 0

dp.each.with_index do |a,i|
  if a <= W
    ans = i
  end
end

puts ans
