# 組み合わせ
# https://docs.ruby-lang.org/ja/latest/method/Array/i/combination.html
a = [1, 2, 3, 4]
a.combination(1).to_a  #=> [[1],[2],[3],[4]]
a.combination(2).to_a  #=> [[1,2],[1,3],[1,4],[2,3],[2,4],[3,4]]
a.combination(3).to_a  #=> [[1,2,3],[1,2,4],[1,3,4],[2,3,4]]
a.combination(4).to_a  #=> [[1,2,3,4]]
a.combination(0).to_a  #=> [[]]: one combination of length 0
a.combination(5).to_a  #=> []  : no combinations of length 5
# 0からNのうち2つを選ぶ
(0..N).to_a.combination(2).to_a

# 0,1をN個使った配列を全種類作成する
# https://docs.ruby-lang.org/ja/latest/method/Array/i/repeated_permutation.html
[0, 1].repeated_permutation(N) do |k|
  bits << k
end


# 269C
# N = gets.to_i
# # 2進方にして分割
# M = N.to_s(2).split(//).map(&:to_i)

# # 2新法にした時の桁数
# length = M.size

# ichi = []

# length.times do |i|
#   if M[i] == 1
#     ichi << i
#   end
# end

# ju = []

# ichi.each do |j|
#   ju << 2 ** (length - (j.to_i) -1)
# end

# bits = []

# # 0,1の数列を作る
# [0, 1].repeated_permutation(ichi.size) do |k|
#   bits << k
# end

# tmp = 0
# bits.each do |l|
#   l.each_with_index do |m,ind|
#     if m == 1
#       tmp = ju[ind] + tmp
#     end
#   end
#   puts tmp
#   tmp = 0
# end




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
