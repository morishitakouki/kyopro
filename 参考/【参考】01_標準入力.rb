# 1行　単体
N = gets.chomp.to_i

# 1行 複数値を配列
A = gets.chomp.split.map(&:to_i)

#1行 複数値をそれぞれ単数
A,B,C = gets.chomp.split.map(&:to_i)

# 複数行 単体
N = gets.to_i
a = N.times.map { gets.chomp.to_i }

# 複数行 配列
N = gets.to_i
input = N.times.map { gets.chomp.split().map(&:to_i) }


# よくある
N,K = gets.chomp.split.map(&:to_i)

A = gets.chomp.split.map(&:to_i)

p N,K
p A
