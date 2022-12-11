N, P, Q, R = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

require 'set'
set = Set.new

Cum = [0] + A.dup
1.upto(N) do |i|
  Cum[i] += Cum[i-1]
  set.add(Cum[i])
end

ans = Cum.any? do |c|
  set.include?(c + P) &&
    set.include?(c + P + Q) &&
    set.include?(c + P + Q + R)
end
puts(ans ? 'Yes' : 'No')
