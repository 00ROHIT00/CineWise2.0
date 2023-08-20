<?php
$movieName = $_POST['movieName'];
$genre = $_POST['genre'];
$lowerCase = strtolower($_POST['genre']); /*MAKES THE INPUT TO LOWERCASE*/
$rating = $_POST['rating'];
$releaseYear = $_POST['releaseYear'];

//Database Connection
$conn = new mysqli('localhost','root','','cinewise');
if($conn -> connect_error) {
  echo "$conn -> connect_error";
  die("Connection Failed :".$conn->connect_error);
} else {
  $stmt = $conn -> prepare("insert into movieData(movieName, genre, rating, releaseYear) values(?, ?, ?, ?)");
  $stmt->bind_param("ssii",$movieName, $lowerCase, $rating, $releaseYear);
  $execval = $stmt->execute();
  echo $execval;
  echo '<script>alert("The Movie Was Added To The Database Successfully!")</script>';
  $stmt->close();
  $conn->close();
}
?>