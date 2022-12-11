N = gets.to_i
A = gets.chomp.split.map(&:to_i)
i = A.min
ans = 1000000000000000
flag = true

while flag
  tmp = 0
  A.each do |a|
    tmp += (a-i)**2
  end
  if tmp < ans
    ans = tmp
  else
    flag = false
  end
  i += 1
end

puts ans
