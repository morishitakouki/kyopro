inp = gets.chomp.split(//).map(&:to_s)

hash = {}
arr = []

N = inp.length

N.times do |n|
  # p inp[n]
  case inp[n]
  when "("
    arr << inp[n]
  when ")"
    tmp = n -1
    until arr.last == "("
      a = arr.pop
      hash[a] = false
    end
    arr.pop
  else
    if hash[inp[n]]
      puts "No"
      return
    else
      hash[inp[n]] = true
      arr << inp[n]
    end
  end
end

puts "Yes"
