<?php
// POSTデータ確認

if (
    !isset($_POST['campany_name']) || $_POST['campany_name']=='' ||
    !isset($_POST['food_name']) || $_POST['food_name']==''
  ) {
    exit('ParamError');
  }

$campanyname = $_POST['campany_name'];
$foodname = $_POST['food_name'];
$img = $_POST['img'];

  
// DB接続（流れは毎回同じ）

$dbn ='mysql:dbname=gsacs_d03_10;charset=utf8;port=3306;host=localhost';
$user = 'root';
$pwd = '';

// 「dbError:...」が表示されたらdb接続でエラーが発生していることがわかる．
try {
  $pdo = new PDO($dbn, $user, $pwd);
} catch (PDOException $e) {
  echo json_encode(["db error" => "{$e->getMessage()}"]);
  exit();
}

// SQL作成&実行 （流れは毎回同じ）
$sql = 'INSERT INTO image_table (id, campany_name, food_name, img, created_at) VALUES (NULL, :campany_name, :food_name, :img, now())';
$stmt = $pdo->prepare($sql);


// バインド変数を設定
$stmt->bindValue(':campany_name', $campanyname, PDO::PARAM_STR);
$stmt->bindValue(':food_name', $foodname, PDO::PARAM_STR);
$stmt->bindValue(':img', $img, PDO::PARAM_STR);

// SQL実行（実行に失敗すると$statusにfalseが返ってくる）
$status = $stmt->execute();


// todo_create.php

if ($status == false) {
    $error = $stmt->errorInfo();
    exit('sqlError:'.$error[2]);
  } else {
    header('Location:todo_input.php');
  }

// SQL作成&実行
