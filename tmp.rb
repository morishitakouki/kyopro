N = gets.chomp.to_i
s = gets.chomp.split(//).map(&:to_s)
Double_max = s.count("\"")
double_count = 0

i = 0

while i < N
  if s[i] == "\""
    double_count += 1
    # p double_count
    # p Double_max
  end

  if double_count.even?  && s[i] == ","
    s[i] = "."
  end
  i += 1
end

puts s.join
