<?php
// if文
if ($n === 1) {
  echo "1";
} else if($n === 2) {
  echo "2";
} else {
  echo "3";
}

// for文
for($i = 0; $i < 10; $i++){
  echo $i; // 0123456789
}

// while文
$j = 0; while($j < 7){
  echo $j; // 0123456 $j++;
}

// 配列の繰り返し
foreach($array as $a){
  echo $a;
}

// 配列の繰り返しでインデックスをフル
$array = ['apple', 'pine', 'banana'];

foreach ($array as $i => $nalue) {
	echo $i;
  echo $nalue;
}
