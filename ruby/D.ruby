N,S = gets.chomp.split.map(&:to_i)
AB = N.times.map { gets.chomp.split().map(&:to_i) }

bits = []

# 0,1の数列を作る
[0, 1].repeated_permutation(N) do |k|
  bits << k
end

len = bits.length

tmp = 0
ans = []

len.times do |i|
  bits[i].each_with_index do |b,ind|
    tmp += AB[ind][b]
  end

  if tmp == S
    puts "Yes"
    bits[i].each do |bb|
      bb == 0 ? ans << "H" : ans << "T"
    end
    puts ans.join
    return
  end
  tmp = 0
end

puts "No"
