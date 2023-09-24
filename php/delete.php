<?php
$movieName = $_POST['removeAMovie'];
$lowerCaseMovie = strtolower($_POST['removeAMovie']); /*MAKES THE INPUT TO LOWERCASE*/

$conn = new mysqli('localhost','root','','cinewise');
if($conn-> connect_error) {
  echo "$conn -> connect_error";
  die("Connection Failed :".$conn->connect_error);
} 

$sql = "DELETE FROM moviedata WHERE movieName = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $lowerCaseMovie);

if ($stmt->execute()) {
  echo '<script>alert("The Movie Was Deleted From The Database Successfully!")</script>';
} else {
  echo "Error deleting record: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>