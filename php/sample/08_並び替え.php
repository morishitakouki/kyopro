<?php

// SORT_NUMERICが数字
// SORT_STRINGが文字列
// 文字列と数値が混在する場合は「SORT_STRING」が便利

// 配列
  $data = ['Tennis', 'Swimming', 'Soccer', 'Baseball'];
  // 配列のソート(昇順)
  sort($data, SORT_STRING);
  print_r($data); // 結果:Array([0]=>Baseball [1]=>Soccer [2]=>Swimming [3]=>Tennis)
  // 配列のソート(降順)
  rsort($data, SORT_STRING);
  print_r($data); // 結果:Array([0]=>Tennis [1]=>Swimming [2]=>Soccer [3]=>Baseball)

// 連想配列
  $data3 = ['Tennis' => 1, 'Swimming' => 1, 'Soccer' => 11 , 'Baseball' => 9];
  // 連想配列(value) 降順はarsort
  asort($data3, SORT_NUMERIC);
  print_r($data3); // 結果:Array([Tennis]=>1 [Swimming]=>1 [Baseball]=>9 [Soccer]=>11)
  // 連想配列(key) 降順はkrsort
  ksort($data3, SORT_STRING);
  print_r($data3); // 結果:Array([Baseball] => 9 [Soccer] => 11 [Swimming] => 1 [Tennis] => 1)
