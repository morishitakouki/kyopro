# https://qiita.com/konchan_exbaka/items/46fde0869d3d5ec7d365
# 実行時間でNGになる可能性あるため、setで代替できないか考える

arr = Array.new(2) { Array.new(3,false) }
p arr #=> [[false, false, false], [false, false, false]]
