<?php
$n = intval(fgets(STDIN));
for($i=0; $i<$n; $i++){
  $array[] = explode(" ", fgets(STDIN));
}

if($n === 1){
  [$t, $x, $y] = $array[0];
  $step = $t - $x -$y;
  if (!($step >= 0 && $step % 2 == 0)){
    echo "No" . "\n";
    return;
  }else{
    echo "Yes" . "\n";
    return;
  }
}

for($i=0; $i<$n-1; $i++){
  $t = abs($array[$i][0] - $array[$i+1][0]);
  $x = abs($array[$i][1] - $array[$i+1][1]);
  $y = abs($array[$i][2] - $array[$i+1][2]);
  $step = $t - $x -$y;
  // echo $step;
  if (!($step >= 0 && $step % 2 == 0)){
    echo "No" . "\n";
    return;
  }
}
echo "Yes" . "\n";
// var_dump($unique_array);
// print_r
