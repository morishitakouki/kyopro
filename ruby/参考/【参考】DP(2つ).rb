N=gets.to_i
txa=Hash.new
N.times do
  t,x,a = gets.split.map(&:to_i)
  txa[t] = {x: x, a: a}
end

p txa

dp = Array.new
dp = [0]

0.upto(txa.keys.max) do |t|
  p "tは#{t}"
  xa = txa[t]
  p "xaは#{xa}"
  y = Array.new
  0.upto([t,4].min) do |x|
    if x == 0
      before_max = [dp[x].to_i, dp[x+1].to_i].max
    elsif x == 4
      before_max = [dp[x-1].to_i, dp[x].to_i].max
    else
      before_max = [dp[x-1].to_i, dp[x].to_i, dp[x+1].to_i].max
    end
    if !xa.nil? && xa[:x] == x
      before_max += xa[:a]
    end
    y << before_max
  end
  dp = y
end

puts dp.max
