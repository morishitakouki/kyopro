# each

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

# CASE
case 対象オブジェクト
when 値1 then
  値1と一致する場合に行う処理
when 値2 then
  値2と一致する場合に行う処理
else
  どの値にも一致しない場合に行う処理
end

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
