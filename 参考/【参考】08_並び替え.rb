# シンプルsort もとを変える場合はsort!
ary = [4, 2, 5, 1, 3]
newary = ary.sort # => [1, 2, 3, 4, 5]

# 逆順
reverse = ary.sort.reverse # => [5, 4, 3, 2, 1]

# https://qiita.com/takanatsu/items/39cf827aadc7d06bf48c

arr = [[1, 3], [1, 5], [1, 2], [2, 4], [2, 2]]

# arr[1]で昇順にソート 以下、どちらも同じ挙動
p arr.sort {|a,b| a[1] <=> b[1]}
p arr.sort_by {|x| x[1]}

# arr[1]で降順にソート 上 + リバース使ってもできる。
p arr.sort {|a,b| b[1] <=> a[1]}
p arr.sort_by {|x| -x[1]}

#  arr[0]で昇順 -> arr[1]で昇順にソート
# nonzero?は自身がゼロの時 nil を返し、非ゼロの時 self を返すため、nilの時に後ろの処理が動く。
p arr.sort {|a, b| (a[0] <=> b[0]).nonzero? || (a[1] <=> b[1])}
p arr.sort_by {|x| [x[0], x[1]]}

# arr[0]で昇順 -> arr[1]で降順にソート
p arr.sort {|a, b| (a[0] <=> b[0]).nonzero? || (b[1] <=> a[1])}
p arr.sort_by {|x| [x[0], -x[1]]}

# 指定の順番で並び替え
fruites = [
  [ 1, 'apple' ],
  [ 2, 'orange' ],
  [ 3, 'banana' ],
  [ 4, 'melon' ],
  [ 5, 'peach' ],
  [ 6, 'kiwi' ],
  [ 7, 'cherry' ],
]
FRUITS_ORDER = [3, 2, 7, 5, 4, 1, 6]

fruites.sort_by{|fruit| FRUITS_ORDER.index(fruit[0])}

p fruites # => [[1, "apple"], [2, "orange"], [3, "banana"], [4, "melon"], [5, "peach"], [6, "kiwi"], [7, "cherry"]]
