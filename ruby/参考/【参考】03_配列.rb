# 配列の作成
array = []

# 配列のデフォルト値設定時の注意(チェリー本140p)
# NG a = Array.new(5, 'default')
a = Array.new(N) { [] }

# 配列の最初に追加
array.unshift("値")

# 配列の最初の要素を削除
array.shift # ※shiftの返り値として、削除したした値が返る

# 配列の最後に追加(どっちも一緒)
array.push(値)
array <<  値

# ・配列の最後を削除
array.pop

# 要素を削除
a = [1, 2, 2, 3, 3, 3]
a.delete(2)
print a # [1, 3, 3, 3]

#  指定したインデックスを削除
a = ["a", "b", "c", "d", "e"]
a.delete_at(3)
p a # ["a", "b", "d", "e"]

# 最後の要素を取得([-1]と同じ意味)
array.last

# 最初の要素を取得([0]と同じ意味)
array.first

# 配列内の指定した要素の位置
arr = ["apple", "grape", "orange", "banana", "meron", "banana"]
p arr.index("grape")
#=> 1

# 配列の検索(配列.select{ |変数|変数に対する真偽値を返すようなもの })
[1,2,3,4,5].select { |num| num.even? }  # => [2, 4]
[1,2,3,4,5].select { |num| num.odd? }  # => [1,3,5]

# 多重代入 # 右辺の数が多い場合ははみ出した値が切り捨てられる
e, f = [100, 200, 300]
e #=> 100
f #=> 200

# 配列の一部を抜き出す
a = [1, 2, 3, 4, 5]
# 2番目から4番目までの要素を取得する
a[1..3] #=> [2, 3, 4]
# 2 つめの要素から 3 つ分の要素を取り出す
a[1, 3] #=> [2, 3, 4]
# 取得したい要素の添え字を複数指定
a.values_at(0, 2, 4) #=> [1, 3, 5]
# 最後の要素を取得する
a[-1] #=> 3
# 最後から2番目の要素を取得する
a[-2] #=> 2

# select/find_all/reject
numbers = [1, 2, 3, 4, 5, 6]
# ブロックの戻り値が真になった要素だけが集められる
even_numbers = numbers.select { ¦n¦ n.even? }
even_numbers #=> [2, 4, 6]
