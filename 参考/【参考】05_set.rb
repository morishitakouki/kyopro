# https://docs.ruby-lang.org/ja/latest/class/Set.html

require 'set'

# 初期化(初期値なし)
set = Set.new

# 初期化(初期値あり)
set = Set[10, 20, 30]

# 追加 add 削除 delete 確認 include?
set.delete(10)
p set              # => #<Set: {20, 30}>
p set.delete?(20)  # => #<Set: {30}>
p set.delete?(10)  # => nil
p set.add(50)      # => #<Set: {30, 50}>
p set              # => #<Set: {30, 50}>
p set.include?(30) # => true
p set.include?(40) # => false

# 最大値の表示
[2, 5, 3].max    #=> 5
[2, 5, 3].max(2) #=> [5, 3]

# 配列にしてソート
p set.to_a.sort
