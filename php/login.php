<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "cinewise";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$username = $_POST['userName'];
$password = $_POST['passWord'];

$query = "SELECT * FROM customerdata WHERE username = '$username' AND password = '$password'";
$result = $conn->query($query);

if ($result->num_rows == 1) {
  echo '<script>alert("Login Successfull!")</script>';
  header('Location: http://localhost/CineWise2.0/Admin.html');
  exit;
} else {
  echo '<script>alert("Invalid Information!")</script>';
}

$conn->close();
?>
