A = gets.chomp.split(//).map(&:to_s)
ans = []

A.each do |a|
  if a != "B"
    ans << a
  elsif a == "B" && !ans.empty?
    ans.pop
  end
end

puts ans.join
