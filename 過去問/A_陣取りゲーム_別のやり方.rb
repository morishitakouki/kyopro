#ドット目線で作成
# https://paiza.jp/works/mondai/a_rank_level_up_problems/a_rank_camp_boss/edit?language_uid=ruby
require 'active_support'
require 'active_support/core_ext'
H, W = gets.chomp.split.map(&:to_i) # たて,よこ
player =  gets.chomp.to_s
field = H.times.map {gets.chomp.split(//).map(&:to_s)}

def check_around(i,j,player,field)
  # 上をチェック
  return true if i > 0   && field[i-1][j] == player
  # 右をチェック
  return true if j < W-1 && field[i][j+1] == player
  # 下をチェック
  return true if i < H-1 && field[i+1][j] == player
  # 左をチェック
  return true if j > 0   && field[i][j-1] == player
end

count = 0 # 盤面が変わらなかったら+1して連続して盤面が変わらなかったら(AもBも動けなくなったら)終わりにする。
while count < 2
  # fieldの値を見て、next_fieldを修正していく※fieldを修正してしまうと、繰り返しの途中で先のマスが更新されてしまうため。
  next_field = field.deep_dup
  H.times do |i|
    W.times do |j|
      if field[i][j] == '.'
        if check_around(i,j,player,field)
          next_field[i][j] = player
        end
      end
    end
  end
  if field == next_field
    count += 1
  else
    count = 0
  end
  field = next_field
  p "#{player}のターンが終わって、フィールドは以下の通り"
  field.each do |f|
    p f
  end
  if player == "A"
    player = "B"
  else
    player = "A"
  end
end

a_count = field.join.count("A")
b_count = field.join.count("B")
puts "#{a_count} #{b_count}"
puts a_count > b_count ? "A" : "B"
