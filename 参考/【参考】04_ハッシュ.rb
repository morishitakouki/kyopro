# 注意
# Hashの繰り返し中にhashに破壊的な変更として新しいkeyを挿入しようとすると、
# can't add a new key into hash during iteration というRuntimeErrorが出る
# https://nekogata.hatenablog.com/entry/2018/10/25/165520


# 初期作成
h = {}        # 何も指定しないと、デフォルト値は`nil`。
h = {:a=>1, :b=>2}

# 表示 ※作成時は{}、表示時は[]
puts h[:a] # => 1

# キーのものが存在するか
h[:a].nil?

# 追加
h[:c]= 3
# もしくは
h.store(:d,4)

# 削除  ※ここは()
h.delete(:a)

# each
{:a=>1, :b=>2}.each {|a| p a}
#=> [:a, 1]
#   [:b, 2]

# each(別々に出力)
{:a=>1, :b=>2}.each {|k, v| p [k, v]}
#=> [:a, 1]
#   [:b, 2]

# ハッシュのキー/valueだけ繰り返し処理する
# each_key do | |
#   each_value do | |

# キーだけ、valueだけ配列で出力
h.keys
h.valuses
