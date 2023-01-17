input = gets.chomp.split("<span data-purpose=\"item-title\">").map(&:to_s)

input.each do |i|
  n = i.index("</span>")
  puts i[0,n]
end
