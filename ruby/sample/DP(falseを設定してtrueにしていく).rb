# https://atcoder.jp/contests/abc240/tasks/abc240_c
# DP
# falseをtrueにしていく

n, x = gets.split.map(&:to_i)

# n+1ってのは、0回目、1回目...n回目だから、n+1回目
# n回目(n+1)に○の場所に入れる場合は、trueにする
# その際に、n-1回目のtrueを使用する
dp = Array.new(n+1){ [false] * (x+1) }
a = []
b = []
n.times do
    aa, bb = gets.split.map(&:to_i)
    a << aa
    b << bb
end
dp[0][0] = true
for i in 0...n
    for j in 0...x
        if dp[i][j] # i回目のjがtrueかつ
            if j + a[i] <= x # j+i番目の表の値がx以下なら
                dp[i+1][j+a[i]] = true
            end
            if j + b[i] <= x # j+i番目の裏の値がx以下なら
                dp[i+1][j+b[i]] = true
            end
        end
    end
end
puts dp[n][x] ? "Yes" : "No"
