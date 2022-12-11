A = gets.chomp.split(//).map(&:to_s)
h = {}
A.each do |a|
  if h[a] == nil
    h[a] = 1
  else
    h[a] += 1
  end
end


h.each_value do |v|
  if v % 2 != 0
    puts "No"
    return
  end
end

puts "Yes"
