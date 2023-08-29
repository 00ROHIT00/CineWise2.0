<?php
// Establish a database connection (use your own credentials)
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "cinewise";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// Retrieve user input from the form
$username = $_POST['userName'];
$password = $_POST['passWord'];

// Query to check if the provided username and password match a record in the database
$query = "SELECT * FROM userdata WHERE username = '$username' AND password = '$password'";
$result = $conn->query($query);

if ($result->num_rows == 1) {
  // Login successful
  echo '<script>alert("Login Successfull!")</script>';
  header('Location: http://localhost/CineWise2.0/Admin.html');
  exit;
} else {
  // Login failed
  echo '<script>alert("Invalid Information!")</script>';
}

$conn->close();
?>
