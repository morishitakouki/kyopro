<?php

// 繰り返し
foreach ($array as $i => $nalue) {
	echo $i;
  echo $nalue;
}

// unique
$array = array("a" => "green", "red", "b" => "green", "blue", "red");
$unique_array = array_unique($array);
print_r($unique_array);
// Array
// (
//     [a] => green
//     [0] => red
//     [1] => blue
// )

// 要素数を取得
$data = ['山田', '掛谷', '日尾', '本多', '矢吹'];
print count($data);   // 結果:5
