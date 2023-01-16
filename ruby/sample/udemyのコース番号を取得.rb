input = 27.times.map { gets.chomp.to_s }
input.each do |i|
  n = i.index("</span>")
  puts i[0,n]
end
