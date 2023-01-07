https://atcoder.jp/contests/abc284/tasks/abc284_c

N,M = gets.chomp.split.map(&:to_i)

input = M.times.map { gets.chomp.split().map(&:to_i) }
E = Hash.new { |h, k| h[k] = [] }

input.each do |a,b|
  E[a] << b
  E[b] << a
end

ans = 0
queue = []
queue << 1

visited = Hash.new(false)

N.times do |i|
  if !visited[i+1]
    ans += 1
    queue << i+1
    until queue.empty?
      # queueは、連結している頂点の場所を示している
      v = queue.shift

      # すでに行ったことのある頂点の場合は次に飛ばす
      next if visited[v]

      # 一度行った場所(行ける頂点をquenceに追加した場所)はtrueにして、
      # 次回以降、処理をしない(quenceに追加する処理をしない)ようにする
      visited[v] = true

      # 行けた頂点からさらに行ける頂点をquenceに追加していく
      E[v].each do |u|
        queue << u
      end
    end
  end
end

puts ans
