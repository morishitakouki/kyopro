# https://atcoder.jp/contests/dp/tasks/dp_b

N,K = gets.chomp.split.map(&:to_i)

H = gets.chomp.split.map(&:to_i)

ans = []

ans[0] = 0

# 初期値のKまでの値を設定する。
if N > K
  p "ねこ"
  # N = 1の場合のans[0]は設定したため、
  p K-1
  0.upto((K-1)) do |k|
    # 直接0から設定するコストを初期値として設定する
    ans[k+1] = (H[0] - H[k+1]).abs
    # ans[l]から飛んだ際のコストを出していく
    # K以下のため、k+1回繰り返す
    (k+1).upto do |l|
      tmp = ans[l] + (H[l] - H[k+1]).abs
      ans[k+1] = tmp if ans[k+1] > tmp
    end
  end
end

p ans
