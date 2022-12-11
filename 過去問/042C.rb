N,K = gets.chomp.split.map(&:to_s)
D = gets.chomp.split.map(&:to_s)
n = N.split(//)
u = n.uniq
while D - u != D
  n = (n.join.to_i + 1).to_s.split(//)
  u = n.uniq
end

p n.join.to_i
