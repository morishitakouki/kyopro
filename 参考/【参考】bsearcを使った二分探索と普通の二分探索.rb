# ■例 https://kona0001.hatenablog.com/entry/2021/02/23/025619#ModPow%E7%B4%AF%E4%B9%97%E3%81%AE%E5%89%B0%E4%BD%99
(0..10**12).bsearch{|v| v >= 500}
# => 500が返される

(0..10**12).bsearch{|v| v >= -500}
# => 0が返される

(0..10**12).bsearch{|v| v >= 10**15}
# => nilが返される

[2,3,5,7,11].bsearch{|v| v > 5}
# => 7が返される(条件を満たす中で一番左の配列の値)

[2,3,5,7,11].bsearch_index{|v| v > 5}
# => 3が返される(条件を満たす中で一番左の配列のインデックス)

# ■使用例
N, P, Q, R = gets.chomp.split.map(&:to_i)
AS = gets.chomp.split.map(&:to_i)

sums = [0]
AS.each do |i|
  sums << sums[-1] + i
end


N.times do |x|
  target = sums[x] + P
  y = sums.bsearch { |a| a >= target }
  if y == nil
    puts "No"
    exit 0
  end
  next if y != target
  target += Q
  z = sums.bsearch { |a| a >= target }
  if z == nil
    puts "No"
    exit 0
  end
  next if z != target

  target += R
  w = sums.bsearch { |a| a >= target }
  if w == nil
    puts "No"
    exit 0
  end
  next if w != target

  puts "Yes"
  exit 0
end

puts "No"

# ■自作ほんとの二分探索
def binary_search(array, target, head, tail, nn)

  while head <= tail

    center = (head + tail) / 2

    if array[center-1] - array[nn-1] == target
      return center
    elsif array[center-1] - array[nn-1] < target
      head = center + 1
    else
      tail = center - 1
    end

  end

  return "NG"

end


N, P, Q, R = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)
ans = []

ans << A[0]

(N-1).times do |i|
  ans << ans[i] + A[i+1]
end




for n in 0..(N-3) do
  p = binary_search(ans, P, n+1, N-2, n)
  if p != "NG"
    q = binary_search(ans, Q, p+1, N-1, p)
    if q != "NG"
      r = binary_search(ans, R, q+1, N, q)
      if r != "NG"
        puts "Yes"
        return
      end
    end
  end
end

puts "No"
