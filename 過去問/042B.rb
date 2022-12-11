N,L = gets.chomp.split.map(&:to_i)
S = N.times.map { gets.chomp.to_s }
puts S.sort.join
