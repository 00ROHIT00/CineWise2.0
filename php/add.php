<?php
$movieName = $_POST['movieName'];
$lowerCaseMovie = strtolower($_POST['movieName']); /*MAKES THE INPUT TO LOWERCASE*/
$genre = $_POST['genre'];
$lowerCaseGenre = strtolower($_POST['genre']); /*MAKES THE INPUT TO LOWERCASE*/
$rating = $_POST['rating'];
$releaseYear = $_POST['releaseYear'];
$description = $_POST['description'];
$link = $_POST['link'];

$conn = new mysqli('localhost','root','','cinewise');
if($conn -> connect_error) {
  echo "$conn -> connect_error";
  die("Connection Failed :".$conn->connect_error);
} else {
  $stmt = $conn -> prepare("insert into movieData(movieName, genre, description, link, rating, releaseYear) values(?, ?, ?, ?, ? ,?)");
  $stmt->bind_param("ssssii",$lowerCaseMovie, $lowerCaseGenre, $description, $link, $rating, $releaseYear);
  $execval = $stmt->execute();
  echo $execval;
  echo '<script>alert("The Movie Was Added To The Database Successfully!")</script>';
  $stmt->close();
  $conn->close();
}
?>