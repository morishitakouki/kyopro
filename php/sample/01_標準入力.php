<?php
// 1行　単体

// 整数
$n = intval(fgets(STDIN));
// fscanf(STDIN, "%d", $num);

// 文字列
fscanf(STDIN, "%s", $str);

// 1行 複数値を配列
  // スペース区切りの整数を一つの配列に追加
  $array = explode(" ", fgets(STDIN));

  // スペース区切りの整数の入力
  fscanf(STDIN, "%d %d", $b, $c);

  // 連続の文字列を1文字ずつ分割して配列に追加
  $array = str_split(strval(fgets(STDIN)));



//1行 複数値をそれぞれ単数


// 複数行 単体
$n = intval(fgets(STDIN));
for($i=0; $i<$n; $i++){
  $array[] = intval(fgets(STDIN));
}


// 複数行 配列



// 出力
echo ($a+$b+$c)." ".$s."\n";
