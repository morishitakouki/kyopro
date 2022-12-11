# https://tsujimotter.hatenablog.com/entry/ruby-binomial-coefficient


_MAXNUM=1000
$array = Array.new(_MAXNUM+1).map{Array.new(_MAXNUM+1, 0)}

# 二項係数 ver.3
#    既に計算した値は, 二次元配列 $array にキャッシュされて次回呼び出し時に使用される
def binom_v3(n,k)
  if $array[n][k] == 0 then
    k = [k, n-k].min

    if k==0 then
        val = 1
    else
        val = binom_v3(n-1,k-1)*n/k
    end

    $array[n][k] = val
    return val

  else
    return $array[n][k]
  end
end
