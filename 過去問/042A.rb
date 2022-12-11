A = gets.chomp.split.map(&:to_i)

puts A.count(7) == 1 && A.count(5) == 2 ? "YES" : "NO"
