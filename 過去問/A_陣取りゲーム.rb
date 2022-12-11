# A,B目線で作成
# https://paiza.jp/works/mondai/a_rank_level_up_problems/a_rank_camp_boss/edit?language_uid=ruby
H, W = gets.chomp.split.map(&:to_i) # たて,よこ
@player =  gets.chomp.to_s
@field = [] # 全体の地図
@a_place = [] # aの陣地
@b_place = [] # bの陣地
# 全体の地図とa,bの陣地の初期設定
H.times do |i|
  field_tmp = gets.chomp.split(//).map(&:to_s)
  @field << field_tmp
  a_check = field_tmp.index("A")
  b_check = field_tmp.index("B")
  @a_place << [i,a_check] if a_check != nil
  @b_place << [i,b_check] if b_check != nil
end

p "初期設定はaが#{@a_place}、bが#{@b_place}、地図は"
@field.each do |f|
  p f
end

def check_around(i,j)
  # 上をチェック
  if i > 0   && @field[i-1][j] == '.'
    @field[i-1][j] = @player
  end
  # 右をチェック
  if j < W-1 && @field[i][j+1] == '.'
    @field[i][j+1] = @player
  end
  # 下をチェック
  if i < H-1 && @field[i+1][j] == '.'
    @field[i+1][j] = @player
  end
  # 左をチェック
  if j > 0   && @field[i][j-1] == '.'
    @field[i][j-1] = @player
  end
end

@a_place.each do |place|
  p place
  check_around(place[0],place[1])
end
p "aの陣地が#{@a_place}、bの陣地が#{@b_place}、地図は"
@field.each do |f|
  p f
end
