# 269C

N = gets.to_i
# 2進方にして分割
M = N.to_s(2).split(//).map(&:to_i)

# 2新法にした時の桁数
length = M.size

ichi = []

length.times do |i|
  if M[i] == 1
    ichi << i
  end
end

ju = []

ichi.each do |j|
  ju << 2 ** (length - (j.to_i) -1)
end

bits = []

# 0,1の数列を作る
[0, 1].repeated_permutation(ichi.size) do |k|
  bits << k
end

tmp = 0
bits.each do |l|
  l.each_with_index do |m,ind|
    if m == 1
      tmp = ju[ind] + tmp
    end
  end
  puts tmp
  tmp = 0
end




# # abc264-C
# # https://atcoder.jp/contests/abc264/tasks/abc264_c

# h1, w1 = gets.split.map{ |e| e.to_i }
# original = Array.new(h1){ gets.split.map{ |e| e.to_i } }
# h2, w2 = gets.split.map{ |e| e.to_i }
# target = Array.new(h2){ gets.split.map{ |e| e.to_i } }

# p h1,w1,original,h2,w2,target

# p (0...h1).to_a.combination(h2)

# p (0...w1).to_a.combination(w2)

# (0...h1).to_a.combination(h2) do |h_indexes|
#   p "h_indexesは#{h_indexes}"
#   (0...w1).to_a.combination(w2) do |w_indexes|
#     p "w_indexesは#{w_indexes}"
#     temp = h_indexes.map{|i| original[i]}
#     p "最初のtmpは#{temp}"
#     temp = temp.map{|array| w_indexes.map{|i| array[i]} }
#     p "2個目のtmpは#{temp}"
#     if temp == target
#       puts "Yes"
#       exit
#     end
#   end
# end

# puts "No"
