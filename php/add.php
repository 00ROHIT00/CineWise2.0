<?php
$movieName = $_POST['movieName'];
$genre = $_POST['genre'];
$rating = $_POST['rating'];
$releaseYear = $_POST['releaseYear'];

//Database Connection
$conn = new mysqli('localhost','root','','cinewise');
if($conn -> connect_error) {
  echo "$conn -> connect_error";
  die("Connection Failed :".$conn->connect_error);
} else {
  $stmt = $conn -> prepare("insert into movieData(movieName, genre, rating, releaseYear) values(?, ?, ?, ?)");
  $stmt->bind_param("ssii",$movieName, $genre, $rating, $releaseYear);
  $execval = $stmt->execute();
  echo $execval;
  echo "The Movie Was Added Successfully...";
  $stmt->close();
  $conn->close();
}
?>