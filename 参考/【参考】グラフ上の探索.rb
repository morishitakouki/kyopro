# https://atcoder.jp/contests/abc277/editorial/5209
# https://atcoder.jp/contests/abc277/submissions/36503545
# https://obelisk.hatenablog.com/entry/2016/03/06/005643

N = gets.to_i
E = Hash.new { |h, k| h[k] = [] }
Q = N.times.map { gets.split.map(&:to_i) }

Q.each do |a, b|
  # 各頂点から行ける頂点を設定する
  E[a] << b
  E[b] << a
end

ans = 1
queue = []
queue << 1

# p queue # => [1]

visited = Hash.new(false)

# p visited # => {}

# 1から行ける頂点をquenceに追加して行って、
# quenceに追加した頂点から行ける頂点をまたquenceに追加して、
# 行ける場所を総洗いしている
until queue.empty?
  # queueは、連結している頂点の場所を示している
  v = queue.shift
  p queue
  p v

  # すでに行ったことのある頂点の場合は次に飛ばす
  next if visited[v]

  # 一度行った場所(行ける頂点をquenceに追加した場所)はtrueにして、
  # 次回以降、処理をしない(quenceに追加する処理をしない)ようにする
  visited[v] = true

  # 行けた頂点が今までで一番大きかった場合にansに追加
  ans = v if ans < v

  # 行けた頂点からさらに行ける頂点をquenceに追加していく
  E[v].each do |u|
    queue << u
  end
end

puts ans
