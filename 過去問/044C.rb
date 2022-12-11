N,A = gets.chomp.split.map(&:to_i)
X = gets.chomp.split.map(&:to_i)
ans = 0
N.times do |n|
  tmp = X.combination(n + 1).to_a
  tmp.each do |t|
    if t.sum * 1.0 / t.size == A
      ans += 1
    end
  end
end

puts ans
