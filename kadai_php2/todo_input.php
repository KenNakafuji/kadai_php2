<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>DB連携型todoリスト（入力画面）</title>
</head>

<body>
<form action="todo_create.php" method="POST">
    <fieldset>
      <legend>検査結果データベース（入力画面）</legend>
      <div>
        会社名: <input type="text" name="campany_name">
      </div>
      <div>
        食品名: <input type="text" name="food_name">
      </div>
      <div>
        データ: <input type="file" name="img">
      </div>
      <div>
        <button>submit</button>
      </div>
    </fieldset>
  </form>

  <div>
  <a href="todo_read.php">A社結果</a>
  <a href="todo_read2.php">B社結果</a>
  <a href="todo_read3.php">C社結果</a>
  </div>

</body>

</html>