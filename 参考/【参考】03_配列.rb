# 配列の作成
array = []

# 配列の最初に追加
array.unshift("値")

# 配列の最初の要素を削除
array.shift # ※shiftの返り値として、削除したした値が返る

# 配列の最後に追加
array.push(値) # ※配列 << 値 も同じ意味

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
