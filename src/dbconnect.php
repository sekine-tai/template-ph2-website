<?php

$dsn ='mysql:dbname=posse;host=db';
$user ='root';
$password ='root';

$dbh = new PDO($dsn, $user, $password);

$sql = 'SELECT * FROM questions';

// foreach($dbh->query($sql) as $row){
//   print_r($row);

// }

$questions = $dbh->query("SELECT * FROM questions")->fetchAll(PDO::FETCH_ASSOC);
$choices = $dbh->query("SELECT * FROM choices")->fetchAll(PDO::FETCH_ASSOC);

foreach ($choices as $key => $choice) {
  
  $index = array_search($choice["question_id"], array_column($questions, 'id'));
  $questions[$index]["choices"][] = $choice;

}

print_r($questions);

?>