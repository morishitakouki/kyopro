# 文字が存在するか
a = [ "a", "b", "c" ]
a.include?("b")       #=> true
a.include?("z")       #=> false

# 文字列が含まれる個数
p 'abcdefg'.count('c')               # => 1
p '123456789'.count('2378')          # => 4
p '123456789'.count('2-8', '^4-6')   # => 4

# 正規表現
# https://userweb.mnet.ne.jp/nakama/

# 指定の文字列が含まれるか
str = "aaorangedd"
puts str.match?(/orange/) # true
puts str.match?(/apple/) # false

# 0-9の6文字が存在するか
str.match?(/[0-9]{6}/)

s = "Q142857Z"

# ^が先頭、$が最後という意味で、\dは数字という意味。[0-9]
# \Aが先頭、\Zが末尾という書き方もある
puts s.match?(/^[A-Z][1-9]\d{5}[A-Z]$/) ? 'Yes' : 'No'

# 一致した文字列のインデックスにはindex?が使えそう
p "astrochemistry".index("str")         # => 1
p "regexpindex".index(/e.*x/, 2)        # => 3
p "character".index(?c)                 # => 0

p "foobarfoobar".index("bar", 6)        # => 9
p "foobarfoobar".index("bar", -6)       # => 9
