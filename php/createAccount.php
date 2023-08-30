<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "cinewise";

$conn = new mysqli($servername, $username, $password, $dbname);

$username = $_POST['userName'];
$password = $_POST['passWord'];
$email = $_POST['email'];

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
} else {
  $stmt = $conn -> prepare("insert into customerdata (username, password, email) values(?, ?, ?)");
  $stmt->bind_param("sss",$username, $password, $email);
  $execval = $stmt->execute();
  echo $execval;
  echo '<script>alert("Account Created Successfully! Go back to homepage and sign in")</script>';
  $stmt->close();
  $conn->close();
}
?>
