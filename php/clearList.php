
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <style>body { background-color :#0c1216 ; color : #f4f8fb; text-align : center;}

  </style>
</head>
<body>
<?php
session_start();


if (isset($_SESSION['userName'])) {
    $username = $_SESSION['userName'];

        $host = 'localhost';
        $dbUsername = 'root';
        $dbPassword = '';
        $dbName = 'cinewise';

        $conn = new mysqli($host, $dbUsername, $dbPassword, $dbName);

       
        if ($conn->connect_error) {
            die("Connection failed: ");
        }

        $sqlDelete = "DELETE FROM watchlater WHERE username = '$username'";
        if ($conn->query($sqlDelete) === TRUE) {
            echo '<h2>Watch Later list cleared successfully!<h2>';
        } else {
            echo '<h2>Error clearing Watch Later list:<h2>' . $conn->error;
        }

        $conn->close();
} else {
    echo 'User is not signed in.';
}
?>
</body>
</html>
