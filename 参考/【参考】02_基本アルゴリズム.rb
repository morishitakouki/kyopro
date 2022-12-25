# if
n = 11
if n > 10
  '10より大きい'
elsif n > 5
  '5より大きい'
else
  '5以下'
end
#=> "10より大きい"

# 三項演算子
n = 11
message = n > 10 ? '10より大きい' : '10以下'
p message #=> "10より大きい"

# each
["a","b","c"].each.with_index do |a,i|
  p "#{a} #{i}"
end
# =>
# "a 0"
# "b 1"
# "c 2"

["a","b","c"].each.with_index(2) do |a,i|
  p "#{a} #{i}"
end
# =>
# "a 2"
# "b 3"
# "c 4"

# times
n = 10000000
cnt = 0
n.times do |i|
  cnt += i
end

# while (Rubyでの競プロ(Atcoder)において計算量10*6を越したらwhileを使ったほうがいいです)  https://kona0001.hatenablog.com/entry/2021/02/23/025619#ModPow%E7%B4%AF%E4%B9%97%E3%81%AE%E5%89%B0%E4%BD%99
n = N
i = 0
while i < n
  p "ねこ#{i}"
  i += 1
end

# CASE #when節に複数の値を指定する
country = 'アメリカ'
case country
when 'japan', '日本'
  'こんにちは'
when 'us', 'アメリカ'
  'Hello'
when 'italy', 'イタリア'
  'Ciao'
else
  '???'
end
#=> "Hello"

# downto (10から6を出力)
10.downto(6) do |i|
  p i
end

# with_indexの応用 → セットのものを交互に配列に入れていく
# inputは以下の形
5
paiza 813
pa 81
8pa 13
iza 8
pa 13

# 以下回答
n = gets.to_i

s = Array.new(n)
a = Array.new(n)
n.times do |i|
  s[i], a[i] =
    gets.split(' ').map.with_index { |val, j| j == 1 ? val.to_i : val }
end

n.times { |i| puts s[i] + ' ' + a[i].to_s }
# 出力
# paiza 813
# pa 81
# 8pa 13
# iza 8
# pa 13
