# 一部TLE

def binom_v2 n,k
  k = [k, n-k].min

  if k==0
    val = 1
  else
    val = binom_v2(n-1,k-1)*n/k
  end

  return val
end

H,W,A,B = gets.chomp.split.map(&:to_i)
ans = 0
(H-A).times do |i|
  # p "#{i+B-1},#{i},#{H-i-1+W-B-1},#{W-B-1}"
  ans += binom_v2(i+B-1,i) * binom_v2(H-i-1+W-B-1,W-B-1)
end

puts ans % (10 ** 9 + 7)
