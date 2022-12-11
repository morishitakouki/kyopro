N = gets.chomp.to_i
K = gets.chomp.to_i
X = gets.chomp.to_i
Y = gets.chomp.to_i

puts N > K ? K * X + (N - K) * Y : N * X
