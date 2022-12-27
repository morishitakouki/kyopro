N,M = gets.chomp.split.map(&:to_i)
input = N.times.map { gets.chomp.split(//).map{|i| i == "o" ? 1 : 0}.join.to_i }

ans = 0

kumi = (0..(N-1)).to_a.combination(2).to_a

kumi.each do |_1,_2|
  sum = (input[_1] + input[_2]).to_s
  # pp sum
  if sum.length == M && !sum.include?("0")
    ans += 1
  end
end

puts ans
