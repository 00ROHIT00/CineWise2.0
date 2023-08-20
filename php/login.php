<?php
$userName = $_POST['userName'];
$passWord = $_POST['passWord'];

//Database Connection
$conn = new mysqli('localhost','root','','cinewise');
if($conn -> connect_error) {
  echo "$conn -> connect_error";
  die("Connection Failed".$conn->connect_error);
} else  {
  $stmt = 
}

?>