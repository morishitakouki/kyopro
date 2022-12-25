require 'set'

set = Set.new

input = gets.chomp.split(//).map(&:to_s)

n = input.index(")")

if n == nil
  puts "No"
  return
end

while n
  tmp = input[0..n]
  # p tmp
  m = tmp.length - tmp.reverse.index("(") - 1
  # p "m#{m}"
  tmp.delete("(")
  tmp.delete(")")
  if tmp.length != tmp.uniq.length
    puts "No"
    return
  end
  # p "ねこ#{m},#{n}"
  input.slice!(m..n)
  # pp input
  n = input.index(")")
  if n == nil || n == 0 || n == 1
    puts "Yes"
    return
  end
end

puts "Yes"
